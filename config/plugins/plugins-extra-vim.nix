{pkgs, lib,  ...}: 
  let
    fromGitHub = rev: ref: repo: pkgs.vimUtils.buildVimPlugin {
      pname = "${lib.strings.sanitizeDerivationName repo}";
      version = ref;
      src = builtins.fetchGit {
        url = "https://github.com/${repo}.git";
        ref = ref;
        rev = rev;
      };
    };
  in
  {
    extraPlugins = with pkgs.vimPlugins; [
      plenary-nvim
      vim-repeat
      lspkind-nvim
      zen-mode-nvim
      twilight-nvim
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
      (fromGitHub "0cb7527d951237bd23e30c461e8f7e2d615830fd" "main" "seblj/roslyn.nvim")
    ];
    extraConfigLua = ''
      require("roslyn").setup {
        config = {
        -- Here you can pass in any options that that you would like to pass to `vim.lsp.start`.
        -- Use `:h vim.lsp.ClientConfig` to see all possible options.
        -- The only options that are overwritten and won't have any effect by setting here:
        --     - `name`
        --     - `cmd`
        --     - `root_dir`
        },

	exe = 'Microsoft.CodeAnalysis.LanguageServer',

	-- NOTE: Set `filewatching` to false if you experience performance problems.
	-- Defaults to true, since turning it off is a hack.
	-- If you notice that the server is _super_ slow, it is probably because of file watching
	-- Neovim becomes super unresponsive on some large codebases, because it schedules the file watching on the event loop.
	-- This issue goes away by disabling this capability, but roslyn will fallback to its own file watching,
	-- which can make the server super slow to initialize.
	-- Setting this option to false will indicate to the server that neovim will do the file watching.
	-- However, in `hacks.lua` I will also just don't start off any watchers, which seems to make the server
	-- a lot faster to initialize.
	filewatching = true,

	-- Optional function that takes an array of solutions as the only argument. Return the solution you
	-- want to use. If it returns `nil`, then it falls back to guessing the solution like normal
	-- Example:
	--
	-- choose_sln = function(sln)
	--     return vim.iter(sln):find(function(item)
	--         if string.match(item, "Foo.sln") then
	--             return item
	--         end
	--     end)
	-- end
	choose_sln = nil,
      }
    '';
  }
