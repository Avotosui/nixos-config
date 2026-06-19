{
  flake.modules.nixos.system-garbagecollection = {
    nix = {
      optimise = {
        automatic = true; 

	dates = "weekly";
	persistent = true;
      }; 

      gc = {
        automatic = true; 

	dates = "weekly"; 
	persistent = true; 

	options = "--delete-older-than 7d";
      };
    };
  };
}
