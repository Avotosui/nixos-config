{ inputs, ... }: 
{
    perSystem = { system, ... }: 
    {
        overlayAttrs = {
            stable = import input.nixpkgs-stable {
                inherit system; 
            }; 
        }; 
    }; 
}
