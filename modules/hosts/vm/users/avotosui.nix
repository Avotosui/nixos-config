{self, ...}: {
  flake.modules.nixos.hosts-vm-users-avotosui = {
    config,
    pkgs,
    ...
  }: {
    home-manager.users.avotosui = self.modules.homeManager.hosts-vm-users-avotosui;

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

  flake.modules.homeManager.hosts-vm-users-avotosui = {
    imports = with self.modules.homeManager; [
      programs-desktops-noctaliahyprland

      programs-customization-starship

      programs-editors-neovim

      programs-multimedia-images-magick
      programs-multimedia-videos-ffmpeg

      programs-multiplexers-tmux

      programs-organization-bat
      programs-organization-file
      programs-organization-trash
      programs-organization-tree

      programs-shells-bash
      programs-shells-zsh

      programs-security-age
      programs-security-sops
      programs-security-ssh
      programs-security-sshagent

      programs-terminals-kitty

      programs-utilities-atuin
      programs-utilities-fzf

      programs-versioncontrol-git

      system-hardware-network
      system-users-groups
      system-xdg
    ];

    home.stateVersion = "26.05";
  };
}
