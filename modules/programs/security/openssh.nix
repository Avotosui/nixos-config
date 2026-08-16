{
  flake.modules.nixos.programs-security-openssh = {
    services.openssh = {
      enable = true;
      
      settings.PasswordAuthentication = false;
    };
  };
}
