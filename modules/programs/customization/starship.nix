{
  flake.modules.homeManager.programs-customization-starship = {
    programs.starship = {
      enable = true;

      settings = {
        format = ''
          [░▒▓](#a3aed2)[  ](bg:#a3aed2 fg:#090c0c)[](bg:#769ff0 fg:#a3aed2)$username$hostname[](fg:#769ff0 bg:#394260)$directory[](fg:#394260 bg:#212736)$git_branch$git_status[](fg:#212736 bg:#1d2230)$cmd_duration$status[ ](fg:#1d2230)
            $shlvl$character
        '';

        username = {
          style_user = "fg:#e3e5e5 bg:#769ff0";
          style_root = "fg:#e3e5e5 bg:#769ff0";
          show_always = true;
          format = "[ $user @ ]($style)";
        };

        hostname = {
          style = "fg:#e3e5e5 bg:#769ff0";
          ssh_only = false;
          ssh_symbol = " through [ssh](bold dimmed blue)";
          format = "[$hostname ]($style)$ssh_symbol";
        };

        shlvl = {
          style = "fg:#a3aed2";
          # style = "fg:#e3e5e5 bg:#769ff0";
          disabled = false;
          symbol = "❯";
          repeat = true;
          repeat_offset = 1;
          format = "[$symbol]($style)";
        };

        directory = {
          style = "bg:#394260";
          format = "[[ $path ](fg:#769ff0 bg:#394260)]($style)";
          truncation_length = 99;
          # truncation_symbol = ".../";
        };

        git_branch = {
          symbol = "";
          style = "bg:#212736";
          format = "[[ $symbol $branch ](fg:#769ff0 bg:#212736)]($style)";
        };

        git_status = {
          deleted = "X";
          style = "bg:#212736";
          format = "[[($all_status$ahead_behind )](fg:#769ff0 bg:#212736)]($style)";
        };

        status = {
          style = "fg:#a0a9cb bg:#1d2230";
          disabled = false;
          format = "[ $common_meaning$signal_name$int ]($style)";

          pipestatus = true;
          pipestatus_separator = " | ";

          pipestatus_format = "[ $pipestatus 󰜴 $common_meaning$signal_name$int ]($style)";
          pipestatus_segment_format = "[$common_meaning$signal_name$int]($style)";
        };

        cmd_duration = {
          style = "fg:#a0a9cb bg:#1d2230";
          format = "[ $duration ]($style)";

          min_time = 0;
          show_milliseconds = true;
        };

        character = {
          format = "[❯ ](fg:#769ff0)";
        };
      };
    };
  };
}
