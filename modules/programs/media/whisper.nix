{
  flake.modules.homeManager.programs-media-whisper = {pkgs, ...}: {
    home.packages = with pkgs; [openai-whisper];
  };
}
