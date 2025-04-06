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
    # parrot-nvim
    roslyn-nvim
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
      require("roslyn").setup {
        config = {
          exe = 'Microsoft.CodeAnalysis.LanguageServer',
          args = {
             "--logLevel=Information", "--extensionLogDirectory=" .. vim.fs.dirname(vim.lsp.get_log_path())
          },

          -- "auto" | "roslyn" | "off"
          --
          -- - "auto": Does nothing for filewatching, leaving everything as default
          -- - "roslyn": Turns off neovim filewatching which will make roslyn do the filewatching
          -- - "off": Hack to turn off all filewatching. (Can be used if you notice performance issues)
          filewatching = "auto",

          -- Optional function that takes an array of targets as the only argument. Return the target you
          -- want to use. If it returns `nil`, then it falls back to guessing the target like normal
          -- Example:
          --
          -- choose_target = function(target)
          --     return vim.iter(target):find(function(item)
          --         if string.match(item, "Foo.sln") then
          --             return item
          --         end
          --     end)
          -- end
          choose_target = nil,

          -- Optional function that takes the selected target as the only argument.
          -- Returns a boolean of whether it should be ignored to attach to or not
          --
          -- I am for example using this to disable a solution with a lot of .NET Framework code on mac
          -- Example:
          --
          -- ignore_target = function(target)
          --     return string.match(target, "Foo.sln") ~= nil
          -- end
          ignore_target = nil,

          -- Whether or not to look for solution files in the child of the (root).
          -- Set this to true if you have some projects that are not a child of the
          -- directory with the solution file
          broad_search = false,

          -- Whether or not to lock the solution target after the first attach.
          -- This will always attach to the target in `vim.g.roslyn_nvim_selected_solution`.
          -- NOTE: You can use `:Roslyn target` to change the target
          lock_target = false,
        }
      }

      -- require("parrot").setup {
      --   providers = {
      --     mistral = {
      --       api_key = os.getenv "MISTRAL_API_KEY",
      --     },
      --     github = {
      --       api_key = os.getenv "GITHUB_TOKEN",
      --     },
      --   },
      --   state_dir = vim.fn.expand('$HOME/parrot/persisted'),
      --   state_dir =vim.fn.expand('$HOME/parrot/chats')
      -- }

    -- require("dap-cs").setup {
    --   -- Additional dap configurations can be added.
    --   -- dap_configurations accepts a list of tables where each entry
    --   -- represents a dap configuration. For more details do:
    --   -- :help dap-configuration
    --   dap_configurations = {
    --     {
    --       -- Must be "coreclr" or it will be ignored by the plugin
    --       type = "coreclr",
    --       name = "Attach remote",
    --       mode = "remote",
    --       request = "attach",
    --     },
    --   },
    --   netcoredbg = {
    --     -- the path to the executable netcoredbg which will be used for debugging.
    --     -- by default, this is the "netcoredbg" executable on your PATH.
    --     path = "netcoredbg"
    --   }
    -- }
  '';
}
