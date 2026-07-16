{
  flake.modules.homeManager.programs-editors-libreoffice = {pkgs, ...}: {
    home.packages = with pkgs; [
      libreoffice-qt
      hunspell
      hunspellDicts.en_US
      hyphenDicts.en_US
    ];
  };
}
