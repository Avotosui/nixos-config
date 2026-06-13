{ self, ... }: 
{
    flake.modules.nixos.users-avotosui = {
        users.users.avotosui = {
            isNormalUser = true; 
            extraGroups = [
                "networkmanager"
                "wheel"
            ]; 
        }; 
    }; 

    flake.modules.homeManager.users-avotosui = {
        imports = with self.modules.homeManager; [
            programs-fastfetch
            programs-git
        ]; 

        home = {
            username = "avotosui"; 
            homeDirectory = "/home/avotosui"; 
            stateVersion = "26.05"; 
        }; 
    }; 
}
