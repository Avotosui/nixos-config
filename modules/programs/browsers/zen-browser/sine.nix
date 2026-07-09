let
  better-active-tab = "d8b79d4a-6cba-4495-9ff6-d6d30b0e94fe";
  better-find-bar = "a6335949-4465-4b71-926c-4a52d34bc9c0";
  disable-rounded-corners = "c6813222-6571-4ba6-8faf-58f3343324f6";
  floating-history = "253a3a74-0cc4-47b7-8b82-996a64f030d5";
  floating-status-bar = "906c6915-5677-48ff-9bfc-096a02a72379";
  hide-extension-name = "cb15abdb-0514-4e09-8ce5-722cf1f4a20f";
  hide-inactive-workspaces = "803c7895-b39b-458e-84f8-a521f4d7a064";
  no-sidebar-scrollbar = "4ab93b88-151c-451b-a1b7-a1e0e28fa7f8";
  no-top-sites = "e122b5d9-d385-4bf8-9971-e137809097d0";
  quietify = "fd24f832-a2e6-4ce9-8b19-7aa888eb7f8e";
  tab-title-fixes = "7190e4e9-bead-4b40-8f57-95d852ddc941";
  zen-back-forward = "c8d9e6e6-e702-4e15-8972-3596e57cf398";
in {
  flake.modules.homeManager.programs-browsers-zen = {
    programs.zen-browser.profiles.default.sine = {
      enable = true;
      mods = [
        "${better-active-tab}"
        "${better-find-bar}"
        "${disable-rounded-corners}"
        "${floating-history}"
        "${floating-status-bar}"
        "${hide-extension-name}"
        "${hide-inactive-workspaces}"
        "${no-sidebar-scrollbar}"
        "${no-top-sites}"
        "${quietify}"
        "${tab-title-fixes}"
        "${zen-back-forward}"
        "advanced-tab-groups"
        "context-menu-icons"
        "unloaded-tabs"
      ];
    };
  };
}
