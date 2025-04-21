{
  pkgs,
  lib,
  ...
}: let
  fromGitHub = rev: ref: repo:
    pkgs.vimUtils.buildVimPlugin {
      pname = "${lib.strings.sanitizeDerivationName repo}";
      version = ref;
      src = builtins.fetchGit {
        url = "https://github.com/${repo}.git";
        ref = ref;
        rev = rev;
      };
    };
in {
  extraPlugins = with pkgs.vimPlugins; [
    plenary-nvim
    vim-repeat
    lspkind-nvim
    zen-mode-nvim
    twilight-nvim
    {
      plugin = roslyn-nvim;
      config = "lua require('roslyn').setup({exe='Microsoft.CodeAnalysis.LanguageServer'})";
    }
    vim-just
    {
      plugin = tint-nvim;
      config = "lua require('tint').setup()";
    }
    {
      plugin = nvim-surround;
      config = "lua require('nvim-surround').setup({move_cursor=false})";
    }
    {
      plugin = treesj;
      config = "lua require('treesj').setup({use_default_keymaps=false})";
    }
  ];
  extraConfigLua = ''

  '';
}
