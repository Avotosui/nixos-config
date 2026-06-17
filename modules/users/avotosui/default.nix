{self, ...}: {
  flake.modules.nixos.users-avotosui = {
    users.users.avotosui = {
      isNormalUser = true;
      initialPassword = "temp";
      extraGroups = [
        "networkmanager"
        "wheel"
      ];
    };
  };

  flake.modules.homeManager.users-avotosui = {
    imports = with self.modules.homeManager; [
      desktops-plasma

      programs-bash
      programs-fastfetch
      programs-fzf
      programs-git
      programs-neovim
      programs-starship
      programs-tree
      programs-zen-browser
    ];

    home = {
      username = "avotosui";
      homeDirectory = "/home/avotosui";
      stateVersion = "26.05";
    };
  };
}
