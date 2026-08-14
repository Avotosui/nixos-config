{
  flake.modules.homeManager.system-xdg = {config, ...}: {
    xdg.userDirs = {
      enable = true;
      createDirectories = true;

      desktop = "${config.home.homeDirectory}/userdirs/Desktop";
      documents = "${config.home.homeDirectory}/userdirs/Documents";
      download = "${config.home.homeDirectory}/userdirs/Downloads";
      music = "${config.home.homeDirectory}/userdirs/Music";
      pictures = "${config.home.homeDirectory}/userdirs/Pictures";
      projects = "${config.home.homeDirectory}/userdirs/Projects";
      publicShare = "${config.home.homeDirectory}/userdirs/Public";
      templates = "${config.home.homeDirectory}/userdirs/Templates";
      videos = "${config.home.homeDirectory}/userdirs/Videos";
    };
  };
}
