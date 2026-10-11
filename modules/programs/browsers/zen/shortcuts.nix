{
  flake.modules.homeManager.programs-browsers-zen = {
    programs.zen-browser.profiles.default = {
      keyboardShortcutsVersion = 21;
      keyboardShortcuts = [
        {
          id = "addBookmarkAsKb";
          disabled = true;
        }
        {
          id = "key_quitApplication";
          disabled = true;
        }
        {
          id = "key_selectLastTab";
          key = "9";
          modifiers.accel = true;
        }
        {
          id = "key_selectTab1";
          key = "1";
          modifiers.accel = true;
        }
        {
          id = "key_selectTab2";
          key = "2";
          modifiers.accel = true;
        }
        {
          id = "key_selectTab3";
          key = "3";
          modifiers.accel = true;
        }
        {
          id = "key_selectTab3";
          key = "3";
          modifiers.accel = true;
        }
        {
          id = "key_selectTab4";
          key = "4";
          modifiers.accel = true;
        }
        {
          id = "key_selectTab5";
          key = "5";
          modifiers.accel = true;
        }
        {
          id = "key_selectTab6";
          key = "6";
          modifiers.accel = true;
        }
        {
          id = "key_selectTab7";
          key = "7";
          modifiers.accel = true;
        }
        {
          id = "key_selectTab8";
          key = "8";
          modifiers.accel = true;
        }
        {
          id = "key_showAllTabs";
          disabled = true;
        }
        {
          id = "openFileKb";
          key = "o";
          modifiers.accel = true;
        }
        {
          id = "zen-close-all-unpinned-tabs";
          disabled = true;
        }
        {
          id = "zen-compact-mode-show-sidebar";
          disabled = true;
        }
        {
          id = "zen-compact-mode-toggle";
          key = "c";
          modifiers = {
            accel = true;
            alt = true;
          };
        }
        {
          id = "zen-duplicate-tab";
          key = "d";
          modifiers.accel = true;
        }
        {
          id = "zen-glance-expand";
          key = "o";
          modifiers = {
            alt = true;
            shift = true;
          };
        }
        {
          id = "zen-pinned-tab-reset-shortcut";
          key = "r";
          modifiers = {
            accel = true;
            alt = true;
            shift = true;
          };
        }
        {
          id = "zen-toggle-pin-tab";
          disabled = true;
        }
        {
          id = "zen-workspace-create";
          key = "n";
          modifiers = {
            accel = true;
            alt = true;
          };
        }
        {
          id = "zen-workspace-switch-10";
          key = "0";
          modifiers = {
            accel = true;
            alt = true;
          };
        }
        {
          id = "zen-workspace-switch-1";
          key = "1";
          modifiers = {
            accel = true;
            alt = true;
          };
        }
        {
          id = "zen-workspace-switch-2";
          key = "2";
          modifiers = {
            accel = true;
            alt = true;
          };
        }
        {
          id = "zen-workspace-switch-3";
          key = "3";
          modifiers = {
            accel = true;
            alt = true;
          };
        }
        {
          id = "zen-workspace-switch-4";
          key = "4";
          modifiers = {
            accel = true;
            alt = true;
          };
        }
        {
          id = "zen-workspace-switch-5";
          key = "5";
          modifiers = {
            accel = true;
            alt = true;
          };
        }
        {
          id = "zen-workspace-switch-6";
          key = "6";
          modifiers = {
            accel = true;
            alt = true;
          };
        }
        {
          id = "zen-workspace-switch-7";
          key = "7";
          modifiers = {
            accel = true;
            alt = true;
          };
        }
        {
          id = "zen-workspace-switch-8";
          key = "8";
          modifiers = {
            accel = true;
            alt = true;
          };
        }
        {
          id = "zen-workspace-switch-9";
          key = "9";
          modifiers = {
            accel = true;
            alt = true;
          };
        }
      ];
    };
  };
}
