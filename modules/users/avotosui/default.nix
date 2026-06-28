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
      desktops-plasma

      programs-bash
      programs-bitwarden
      programs-fastfetch
      programs-fzf
      programs-git
      programs-kitty
      programs-neovim
      programs-redshift
      programs-starship
      programs-tmux
      programs-tree
      programs-zen-browser
      programs-zsh
    ];

    home = {
      username = "avotosui";
      homeDirectory = "/home/avotosui";
      stateVersion = "26.05";
    };
  };
}
