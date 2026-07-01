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
    home = {
      username = "avotosui";
      homeDirectory = "/home/avotosui";
      stateVersion = "26.05";
    };
  };
}
