{self, ...}: {
  flake.modules.nixos.users-avotosui = {pkgs, ...}: {
    users.users.avotosui = {
      isNormalUser = true;
      initialPassword = "temp";
      extraGroups = [
        "networkmanager"
        "wheel"
      ];

      shell = pkgs.zsh;
    };
  };

  flake.modules.homeManager.users-avotosui = {
    imports = with self.modules.homeManager; [
      programs-gui-desktopmanagers-plasma

      programs-browsers-zen-browser

      programs-customization-starship

      programs-devtools-git
      programs-devtools-tmux

      programs-editors-neovim

      programs-security-bitwarden

      programs-services-redshift

      programs-shells-bash
      programs-shells-zsh

      programs-terminals-kitty

      programs-utilities-fastfetch
      programs-utilities-fzf
      programs-utilities-onefetch
      programs-utilities-tree
    ];

    home = {
      username = "avotosui";
      homeDirectory = "/home/avotosui";
      stateVersion = "26.05";
    };
  };
}
