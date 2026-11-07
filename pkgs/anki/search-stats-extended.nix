{
  lib,
  anki-utils,
  fetchurl,
  nix-update-script,
  unzip,
  ...
}:
anki-utils.buildAnkiAddon (finalAttrs: {
  pname = "search-stats-extended";
  version = "1.22.0";
  src = fetchurl {
    url = "https://github.com/Luc-Mcgrady/Anki-Search-Stats-Extended/releases/download/v${finalAttrs.version}/searchStatsExtended.ankiaddon";
    sha256 = "eJCJ9wtBw3GZjWYT1Gg7v7mfzfwhY19Moq0lHPsp5DM=";
  };

  nativeBuildInputs = [unzip];

  unpackPhase = ''
    runHook preUnpack
    unzip $src
    runHook postUnpack
  '';

  passthru.updateScript = nix-update-script {};

  meta = {
    description = "Search Stats Extended";
    homepage = "https://github.com/Luc-Mcgrady/Anki-Search-Stats-Extended";
    license = lib.licenses.agpl3Only;
    maintainers = with lib.maintainers; [ avotosui ];
  };
})
