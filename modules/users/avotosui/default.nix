{ self, ... }: 
{
    flake.modules.nixos.users-avotosui = {
        users.users.avotosui = {
            isNormalUser = true; 
            initialPassword = "temp"; 
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
            programs-neovim
            programs-zen-browser
        ]; 

        home = {
            username = "avotosui"; 
            homeDirectory = "/home/avotosui"; 
            stateVersion = "26.05"; 
        }; 
    }; 
}
