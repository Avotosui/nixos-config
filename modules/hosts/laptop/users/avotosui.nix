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

      programs-development-file
      programs-development-git
      programs-development-tree

      programs-editors-neovim

      programs-media-ffmpeg
      programs-media-gimp
      programs-media-magick
      programs-media-vlc

      programs-multiplexers-tmux

      programs-organization-kondo
      programs-organization-yazi

      programs-security-bitwarden

      programs-services-redshift

      programs-shells-bash
      programs-shells-zsh

      programs-terminals-kitty

      programs-utilities-fastfetch
      programs-utilities-fzf
      programs-utilities-onefetch

      system-hardware-network
      system-hardware-uinput
      system-users-groups
      system-xdg
    ];

    home.stateVersion = "26.05";
  };
}
