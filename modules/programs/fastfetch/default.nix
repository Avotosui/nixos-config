{
    flake.modules.homeManager.programs-fastfetch = { pkgs, ... }: 
    {
        home.packages = with pkgs; [ fastfetch ]; 
    }; 
}
