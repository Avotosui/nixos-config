{
  perSystem = {pkgs, ...}: {
    devShells.default = pkgs.mkShell {
      strictDeps = true;

      nativeBuildInputs = with pkgs; [
        alejandra
        nixd

        bash-language-server

        lua-language-server

        zsh
      ];

      shellHook = ''
        if [ -z "$ZSH_VERSION" ]; then
          exec zsh
        fi
      '';
    };
  };
}
