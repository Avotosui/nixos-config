{self, ...}: {
  flake.modules.nixos.hosts-fw13p = {
    config,
    pkgs,
    ...
  }: {
    systemd.tmpfiles.rules = [
      "d /run/eduroam 0750 root wpa_supplicant -"
    ];

    systemd.services.wpa_supplicant.serviceConfig.BindReadOnlyPaths = ["/run/eduroam"];

    systemd.services.eduroam-certs = {
      wantedBy = ["multi-user.target"];
      before = ["wpa_supplicant.service" "NetworkManager.service"];
      after = ["sops-install-secrets.service"];
      serviceConfig = {
        Type = "oneshot";
        RemainAfterExit = true;
      };
      script = ''
        install -m 0400 -o wpa_supplicant -g wpa_supplicant \
          ${config.sops.secrets."wifi/eduroam/ca-cert".path} /run/eduroam/ca.pem
        install -m 0400 -o wpa_supplicant -g wpa_supplicant \
          ${config.sops.secrets."wifi/eduroam/eduroam-private".path} /run/eduroam/client.p12
      '';
    };

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
          ca-cert = "/run/eduroam/ca.pem";
          client-cert = "/run/eduroam/client.p12";
          domain-suffix-match = "$EDUROAM_DOMAIN_SUFFIX_MATCH";
          private-key = "/run/eduroam/client.p12";
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
        restartUnits = ["eduroam-certs.service"];
      };
      "wifi/eduroam/domain-suffix-match" = {
        inherit sopsFile;
      };
      "wifi/eduroam/eduroam-private" = {
        sopsFile = "${self}/secrets/root/${config.networking.hostName}/eduroam.p12";
        format = "binary";
        restartUnits = ["eduroam-certs.service"];
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
