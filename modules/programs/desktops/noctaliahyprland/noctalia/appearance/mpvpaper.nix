{
  flake.modules.homeManager.programs-customization-mpvpaper = {
    config,
    pkgs,
    ...
  }: {
    programs.mpvpaper = {
      enable = true;
      pauseList = ''
        steam
      '';
    };

    programs.noctalia.settings.plugin_settings."noctalia/mpvpaper" = {
      video_directory = "${config.xdg.userDirs.videos}/Wallpapers";
    };

    home.packages = with pkgs; [socat];
  };
}
