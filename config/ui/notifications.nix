{pkgs, ...}: {
  plugins.notify = {
    enable = pkgs.lib.mkDefault true;
    settings = {
      level = "info";
      backgroundColour = "#191724";
    };
  };
}
