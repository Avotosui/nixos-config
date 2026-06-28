{
  flake.modules.nixos.programs-editors-vim = {pkgs, ...}: {
    environment = {
      systemPackages = with pkgs; [vim];

      variables = {
        EDITOR = "vim";
        VISUAL = "vim";
      };
    };
  };
}
