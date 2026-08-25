{self, ...}: {
  flake.modules.nixos.hosts-wsl-users-avotosui = {
    config,
    pkgs,
    ...
  }: {
    home-manager.users.avotosui = self.modules.homeManager.hosts-wsl-users-avotosui;

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

  flake.modules.homeManager.hosts-wsl-users-avotosui = {
    imports = with self.modules.homeManager; [
      programs-compression-p7zip
      programs-compression-xz
      programs-compression-zip

      programs-customization-starship

      programs-editors-neovim

      programs-multimedia-images-magick
      programs-multimedia-videos-ffmpeg

      programs-monitoring-btop
      programs-monitoring-fastfetch
      programs-monitoring-nvtop
      programs-monitoring-onefetch

      programs-multiplexers-tmux

      programs-organization-bat
      programs-organization-file
      programs-organization-kondo
      programs-organization-trash
      programs-organization-tree
      programs-organization-yazi
      programs-organization-zoxide

      programs-security-age
      programs-security-sops
      programs-security-ssh
      programs-security-sshagent

      programs-shells-bash
      programs-shells-zsh

      programs-utilities-atuin
      programs-utilities-fzf
      programs-utilities-nixalien
      programs-utilities-comma

      programs-versioncontrol-git

      system-users-groups
      system-xdg
    ];

    home.stateVersion = "26.05";
  };
}
