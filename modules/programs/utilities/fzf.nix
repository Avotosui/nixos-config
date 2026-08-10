{
  flake.modules.homeManager.programs-utilities-fzf = {
    programs.fzf = {
      enable = true;
      historyWidget.command = "";
      colors = {
        fg = "#c0caf5";
        bg = "#16161e";
        "bg+" = "#283457";
        border = "#27a1b9";
        gutter = "#16161e";
        header = "#ff9e64";
        "hl+" = "#2ac3de";
        hl = "#2ac3de";
        info = "#545c7e";
        marker = "#ff007c";
        pointer = "#ff007c";
        prompt = "#2ac3de";
        query = "#c0caf5:regular";
        scrollbar = "#27a1b9";
        separator = "#ff9e64";
        spinner = "#ff007c";
      };
      defaultOptions = [
        "--highlight-line"
        "--info=inline-right"
        "--ansi"
        "--layout=reverse"
        # "--border=none"
      ];
    };
  };
}
