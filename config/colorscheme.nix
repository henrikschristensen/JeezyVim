{pkgs, ...}: {
  colorschemes = {
    vscode = {
      enable = pkgs.lib.mkDefault true;
      settings = {
        transparent = true;
        group_overrides = {
          Macro = {
            fg = "#006140";
          };
        };
      };
    };
  };
}
