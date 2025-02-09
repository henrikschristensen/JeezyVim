{pkgs, ...}: {
  plugins.notify = {
    enable = pkgs.lib.mkDefault true;
    settings = {
      level = "info";
      background_colour = "#191724";
    };
  };
}
