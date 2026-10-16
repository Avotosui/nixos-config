{self, ...}: {
  flake.modules.nixos.hosts-fw13p-users-avotosui = {
    config,
    pkgs,
    ...
  }: {
    home-manager.users.avotosui = self.modules.homeManager.hosts-fw13p-users-avotosui;

    users.users.avotosui = {
      isNormalUser = true;
      # hashedPasswordFile = config.sops.secrets."avotosui/user-password".path;
      extraGroups = ["wheel"];
      shell = pkgs.zsh;
    };

    # sops.secrets = {
    #   "avotosui/user-password" = {};
    #   "avotosui/user-password".neededForUsers = true;
    # };
  };

  flake.modules.homeManager.hosts-fw13p-users-avotosui = {
    imports = with self.modules.homeManager; [
      programs-browsers-brave
      programs-browsers-zen

      programs-compression-p7zip
      programs-compression-xz
      programs-compression-zip

      programs-customization-mpvpaper
      programs-customization-starship

      programs-dataprocessing-jq
      programs-dataprocessing-yq

      programs-desktops-noctaliahyprland

      programs-development-codex
      programs-development-direnv
      programs-development-stm32

      programs-editors-neovim
      programs-editors-obsidian

      programs-fhscompat-nixalien

      programs-fun-areofylfetch
      programs-fun-fastfetch
      programs-fun-onefetch

      programs-monitoring-btop
      programs-monitoring-dmidecode
      programs-monitoring-nvtop
      programs-monitoring-smartctl

      programs-multimedia-documents-calibre
      programs-multimedia-documents-zathura
      programs-multimedia-images-gimp
      programs-multimedia-images-magick
      programs-multimedia-images-oxipng
      programs-multimedia-images-pngquant
      programs-multimedia-videos-davinciresolve
      programs-multimedia-videos-ffmpeg
      programs-multimedia-videos-kdenlive
      programs-multimedia-videos-losslesscut
      programs-multimedia-videos-mpv
      programs-multimedia-videos-obs
      programs-multimedia-videos-vlc
      programs-multimedia-videos-whisper
      programs-multimedia-videos-ytdlp

      programs-multiplexers-tmux

      programs-music-librepods

      programs-networking-aria2
      programs-networking-ookla
      programs-networking-wget

      programs-officesuites-libreoffice

      programs-organization-bat
      programs-organization-dolphin
      programs-organization-dua
      programs-organization-dust
      programs-organization-eza
      programs-organization-fd
      programs-organization-file
      programs-organization-kondo
      programs-organization-ripgrep
      programs-organization-trash
      programs-organization-tree
      programs-organization-yazi
      programs-organization-zoxide

      programs-packagemanagers-flatpak

      programs-productivity-espeak
      programs-productivity-kdeconnect
      programs-productivity-zbar

      programs-security-age
      programs-security-bitwarden
      programs-security-sops
      programs-security-ssh
      programs-security-sshagent

      programs-shells-bash
      programs-shells-zsh

      programs-socials-discord
      programs-socials-zoom

      programs-study-anki

      programs-synchronization-syncthing

      programs-terminals-kitty

      programs-utilities-atuin
      programs-utilities-comma
      programs-utilities-fzf
      programs-utilities-just
      programs-utilities-tldr

      programs-versioncontrol-forgejocli
      programs-versioncontrol-git
      programs-versioncontrol-githubcli
      programs-versioncontrol-gitlabcli

      programs-vpns-proton

      system-fonts-jetbrainsmono
      system-fonts-microsoftfonts
      system-hardware-network
      system-hardware-uinput
      system-users-groups
      system-xdg
    ];

    home.stateVersion = "26.05";
  };
}
