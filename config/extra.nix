{pkgs, ...}: {
  extraConfigLuaPost = builtins.readFile ./extra.lua;

  extraPackages = with pkgs;
    [
      # runtime dependencies
      fd
      ripgrep
      # language servers
      roslyn-ls
      # debug servers
      delve
      netcoredbg
    ]
    ++ pkgs.lib.optionals pkgs.stdenv.isDarwin [
      # runtime dependencies
      gnused
    ];
}
