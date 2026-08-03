{self, ...}: {
  flake.modules.nixos.hosts-wsl-users-avotosui = {pkgs, ...}: {
    home-manager.users.avotosui = self.modules.homeManager.hosts-wsl-users-avotosui;

    users.users.avotosui = {
      isNormalUser = true;
      initialPassword = "temp";
      extraGroups = ["wheel"];
      shell = pkgs.zsh;
    };
  };

  flake.modules.homeManager.hosts-wsl-users-avotosui = {
    imports = with self.modules.homeManager; [
      programs-compression-p7zip
      programs-compression-xz
      programs-compression-zip

      programs-customization-starship

      programs-development-file
      programs-development-git
      programs-development-tree

      programs-editors-neovim

      programs-media-ffmpeg
      programs-media-magick

      programs-monitoring-btop
      programs-monitoring-fastfetch
      programs-monitoring-onefetch

      programs-multiplexers-tmux

      programs-organization-kondo
      programs-organization-yazi

      programs-security-age
      programs-security-sops
      programs-security-ssh
      programs-security-sshagent

      programs-shells-bash
      programs-shells-zsh

      programs-utilities-fzf

      system-users-groups
      system-xdg
    ];

    home.stateVersion = "26.05";
  };
}
