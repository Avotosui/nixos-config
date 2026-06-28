{
  flake.modules.nixos.system-fonts-jetbrainsmono = {pkgs, ...}: {
    fonts.packages = with pkgs; [nerd-fonts.jetbrains-mono];
  };
}
