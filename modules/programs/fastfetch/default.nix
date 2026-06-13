{
    flake.modules.nixos.programs-fastfetch = { pkgs, ... }: 
    {
        home.packages = with pkgs; [ fastfetch ]; 
    }; 
}
