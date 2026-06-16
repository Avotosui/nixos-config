{
  flake.modules.nixos.fonts-jetbrainsmono = {pkgs, ...}: {
    fonts.packages = with pkgs; [nerd-fonts.jetbrains-mono];
  };
}
