{ self, inputs, ... }: 
{
    flake.modules.nixos.hosts-laptop = { pkgs, ... }: 
    {
        imports = with self.modules.nixos; [
            desktops-plasma

            programs-git
            programs-vim

            system-core
            system-networkmanager
            system-pipewire
            system-printing

            users-Avotosui
        ]; 

        boot = {
            loader.grub = {
                enable = true; 
                device = "/dev/sda"; 
                useOSProber = true; 
            }; 
            kernelPackages = pkgs.linuxPackages_latest; 
        }; 

        networking.hostName = "laptop"
        

        services = {
            libinput.enable = true; 

            xserver.xkb = {
                layout = "us"; 
                variant = ""; 
            };
        }; 

        system.stateVersion = "26.05"; 
    }; 

    flake.nixosConfigurations.laptop = inputs.nixpkgs.lib.nixosSystem {
        modules = [
            self.modules.nixos.hosts-laptop

            inputs.home-manager.nixosModules.home-manager {
                home-manager = {
                    useGlobalPkgs = true; 
                    useUserPkgs = true; 
                    users.Avotosui = self.modules.homeManager.users-Avotosui; 
                }; 
            }
        ]; 
    }; 
}
