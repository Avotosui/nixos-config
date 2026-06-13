{ self, ... }
{
    flake.modules.nixos.users-Avotosui = {
        users.users.Avotosui = {
            isNormalUser = true; 
            extraGroups = [
                "networkmanager"
                "wheel"
            ]; 
        }; 
    }; 

    flake.modules.homeManager.users-Avotosui = {
        imports = with self.modules.homeManager; [
            programs-fastfetch
            programs-git
        ]; 

        home = {
            username = "Avotosui"; 
            homeDirectory = "home/Avotosui"; 
            stateVersion = "26.05"; 
        }; 
    }; 
}
