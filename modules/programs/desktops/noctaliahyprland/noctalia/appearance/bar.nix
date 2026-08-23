{
  flake.modules.homeManager.programs-desktops-noctaliahyprland = {
    programs.noctalia.settings = {
      bar.default = {
        concave_edge_corners = false;
        margin_ends = 0;
        radius = 0;

        position = "bottom";

        start = [
          "launcher"
          "workspaces"
          "divider"
          "media"
          "divider"
          "tray"
          "divider"
          "notifications"
        ];
        center = [];
        end = [
          "clipboard"
          "divider"
          "caffeine"
          "brightness"
          "divider"
          "volume_input"
          "volume_output"
          "divider"
          "bluetooth"
          "network"
          "divider"
          "sysmon_cpu"
          "sysmon_gpu"
          "sysmon_ram"
          "divider"
          "power_profile"
          "battery"
          "divider"
          "clock_date"
          "divider"
          "clock_time"
          "divider"
          "session"
        ];
      };

      widget = {
        clock_date = {
          type = "clock";
          format = "{:%a %D}";
        };

        clock_time = {
          type = "clock";
          format = "{:%l:%M:%S %p}";
        };

        divider = {
          type = "text";

          interactive = false;
          text = "|";
        };

        sysmon_cpu = {
          type = "sysmon";

          stat = "cpu_usage";
          visualization = "none";
        };

        sysmon_gpu = {
          type = "sysmon";

          stat = "gpu_usage";
          visualization = "none";
        };

        sysmon_ram = {
          type = "sysmon";

          stat = "ram_used";
          visualization = "none";
        };

        volume_input = {
          type = "volume";
          device = "input";
        };

        volume_output = {
          type = "volume";
          device = "output";
        };
      };
    };
  };
}
