{self, ...}: {
  flake.modules.nixos.hosts-fw13p = {config, ...}: {
    systemd.services.wpa_supplicant.serviceConfig.BindReadOnlyPaths = ["/run/secrets/wifi/eduroam"];
    networking.networkmanager.ensureProfiles = {
      environmentFiles = [
        config.sops.templates."eduroam.env".path
      ];

      profiles.eduroam = {
        connection = {
          id = "eduroam";
          type = "wifi";
        };
        wifi = {
          mode = "infrastructure";
          ssid = "eduroam";
        };
        wifi-security = {
          key-mgmt = "wpa-eap";
          pmf = "2";
          proto = "rsn";
        };
        "802-1x" = {
          eap = "tls";
          identity = "$EDUROAM_IDENTITY";
          anonymous-identity = "$EDUROAM_ANONYMOUS_IDENTITY";
          ca-cert = config.sops.secrets."wifi/eduroam/ca-cert".path;
          client-cert = config.sops.secrets."wifi/eduroam/eduroam-private".path;
          domain-suffix-match = "$EDUROAM_DOMAIN_SUFFIX_MATCH";
          private-key = config.sops.secrets."wifi/eduroam/eduroam-private".path;
          private-key-password = "$EDUROAM_KEY_PASSWORD";
          private-key-password-flags = "0";
        };
        ipv4.method = "auto";
        ipv6.method = "auto";
      };
    };

    sops.templates."eduroam.env".content = ''
      EDUROAM_ANONYMOUS_IDENTITY=${config.sops.placeholder."wifi/eduroam/anonymous-identity"}
      EDUROAM_DOMAIN_SUFFIX_MATCH=${config.sops.placeholder."wifi/eduroam/domain-suffix-match"}
      EDUROAM_KEY_PASSWORD=${config.sops.placeholder."wifi/eduroam/private-key-password"}
      EDUROAM_IDENTITY=${config.sops.placeholder."wifi/eduroam/identity"}
    '';

    sops.secrets = let
      sopsFile = "${self}/secrets/root/${config.networking.hostName}/secrets.yaml";
    in {
      "wifi/eduroam/anonymous-identity" = {
        inherit sopsFile;
      };
      "wifi/eduroam/ca-cert" = {
        inherit sopsFile;
        owner = "wpa_supplicant";
        mode = "0400";
        path = "/etc/wpa_supplicant/eduroam-ca.pem";
      };
      "wifi/eduroam/domain-suffix-match" = {
        inherit sopsFile;
      };
      "wifi/eduroam/eduroam-private" = {
        sopsFile = "${self}/secrets/root/${config.networking.hostName}/eduroam.p12";
        format = "binary";
        owner = "wpa_supplicant";
        mode = "0400";
        path = "/etc/wpa_supplicant/eduroam-private.p12";
      };
      "wifi/eduroam/identity" = {
        inherit sopsFile;
      };
      "wifi/eduroam/private-key-password" = {
        inherit sopsFile;
      };
    };
  };
}
