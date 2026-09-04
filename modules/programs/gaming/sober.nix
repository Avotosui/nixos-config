{
  flake.modules.homeManager.programs-gaming-sober = {
    services.flatpak = {
      packages = [
        {
          appId = "org.vinegarhq.Sober";
          origin = "flathub";
        }
      ];
    };
  };
}
