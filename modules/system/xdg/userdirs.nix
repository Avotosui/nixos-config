{
  flake.modules.homeManager.system-xdg = {config, ...}: {
    xdg.userDirs = {
      enable = true;
      createDirectories = true;

      desktop = "${config.home.homeDirectory}/userdirs/desktop";
      documents = "${config.home.homeDirectory}/userdirs/documents";
      download = "${config.home.homeDirectory}/userdirs/downloads";
      music = "${config.home.homeDirectory}/userdirs/music";
      pictures = "${config.home.homeDirectory}/userdirs/pictures";
      projects = "${config.home.homeDirectory}/userdirs/projects";
      publicShare = "${config.home.homeDirectory}/userdirs/public";
      templates = "${config.home.homeDirectory}/userdirs/templates";
      videos = "${config.home.homeDirectory}/userdirs/videos";
    };
  };
}
