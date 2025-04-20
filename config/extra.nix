{pkgs, ...}: {
  extraConfigLuaPost = builtins.readFile ./extra.lua;

  extraPackages = with pkgs;
    [
      # runtime dependencies
      fd
      ripgrep
      # language servers
      roslyn-ls
    ]
    ++ pkgs.lib.optionals pkgs.stdenv.isDarwin [
      # runtime dependencies
      gnused
    ];
}
