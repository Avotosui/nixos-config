{
  flake.modules.nixos.programs-vim = {pkgs, ...}: {
    environment = {
      systemPackages = with pkgs; [vim];

      variables = {
        EDITOR = "vim";
        VISUAL = "vim";
      };
    };
  };
}
