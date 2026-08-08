{
  flake.modules.homeManager.programs-multimedia-videos-whisper = {pkgs, ...}: {
    home.packages = with pkgs; [openai-whisper];
  };
}
