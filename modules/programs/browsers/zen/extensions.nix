let
  mkPluginUrl = id: "https://addons.mozilla.org/firefox/downloads/latest/${id}/latest.xpi";

  mkExtensionEntry = {
    id,
    pinned ? false,
  }: let
    base = {
      install_url = mkPluginUrl id;
      installation_mode = "force_installed";
    };
  in
    if pinned
    then base // {default_area = "navbar";}
    else base;

  mkExtensionSettings = builtins.mapAttrs (_: entry:
    if builtins.isAttrs entry
    then entry
    else mkExtensionEntry {id = entry;});
in {
  flake.modules.homeManager.programs-browsers-zen = {
    programs.zen-browser.policies = {
      ExtensionSettings = mkExtensionSettings {
        "{446900e4-71c2-419f-a6a7-df9c091e268b}" = mkExtensionEntry {
          id = "bitwarden-password-manager";
          pinned = true;
        };
        # about:debugging#/runtime/this-firefox
        "uBlock0@raymondhill.net" = "ublock-origin";
        "@windscribeff" = "windscribe";
        "{0814291e-c531-4741-a8e7-9a3e8f62bf71}" = "remove-youtube-tracking";
        "{3579f63b-d8ee-424f-bbb6-6d0ce3285e6a}" = "chameleon-ext";
        "{4590d8b8-3569-46e3-a571-cabfbaeab2c1}" = "no-youtube-shorts";
        "{74145f27-f039-47ce-a470-a662b129930a}" = "clearurls";
        "{85860b32-02a8-431a-b2b1-40fbd64c9c69}" = "github-file-icons";
        "{a4c4eda4-fb84-4a84-b4a1-f7c1cbf2a1ad}" = "refined-github-";
        "{ef9e884b-b6d8-4544-b0de-82c46c5e95de}" = "sponsorblock";
        "{fef652df-dd80-450e-b64a-567abeb3aa4b}" = "youtube-cards";
        "@searchengineadremover" = "searchengineadremover";
        "github-no-more@ihatereality.space" = "github-no-more";
        "github-repository-size@pranavmangal" = "gh-repo-size";
        "jid1-BoFifL9Vbdl2zQ@jetpack" = "decentraleyes";
      };
    };
  };
}
