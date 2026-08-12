{self, ...}: {
  flake.modules.nixos.hosts-laptop-users-avotosui = {
    config,
    pkgs,
    ...
  }: {
    home-manager.users.avotosui = self.modules.homeManager.hosts-laptop-users-avotosui;

    users.users.avotosui = {
      isNormalUser = true;
      hashedPasswordFile = config.sops.secrets."avotosui/user-password".path;
      extraGroups = ["wheel"];
      shell = pkgs.zsh;
    };

    sops.secrets = {
      "avotosui/user-password" = {};
      "avotosui/user-password".neededForUsers = true;
    };
  };

  flake.modules.homeManager.hosts-laptop-users-avotosui = {
    imports = with self.modules.homeManager; [
      programs-desktop-environments-plasma

      programs-browsers-zen

      programs-compression-p7zip
      programs-compression-xz
      programs-compression-zip

      programs-customization-starship

      programs-editors-neovim

      programs-multimedia-images-gimp
      programs-multimedia-images-magick
      programs-multimedia-videos-ffmpeg
      programs-multimedia-videos-mpv
      programs-multimedia-videos-vlc
      programs-multimedia-videos-ytdlp

      programs-monitoring-fastfetch
      programs-monitoring-onefetch

      programs-multiplexers-tmux

      programs-organization-bat
      programs-organization-dua
      programs-organization-dust
      programs-organization-file
      programs-organization-gdu
      programs-organization-kondo
      programs-organization-trash
      programs-organization-tree
      programs-organization-yazi

      programs-security-bitwarden

      programs-services-redshift

      programs-shells-bash
      programs-shells-zsh

      programs-terminals-kitty

      programs-utilities-atuin
      programs-utilities-fzf

      programs-versioncontrol-git

      programs-vpns-proton

      system-hardware-network
      system-hardware-uinput
      system-users-groups
      system-xdg
    ];

    home.stateVersion = "26.05";
  };
}
