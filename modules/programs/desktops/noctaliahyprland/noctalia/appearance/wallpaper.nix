{self, ...}: let 
  avatars = "${self}/assets/avatars";
in {
  flake.modules.homeManager.programs-desktops-noctaliahyprland = {config, ...}: {
    programs.noctalia.settings = {
      backdrop.enabled = true;

      shell.avatar_path = "${avatars}/denia.webp";
    };
  };
}
