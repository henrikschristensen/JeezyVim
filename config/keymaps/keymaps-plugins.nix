{
  config.keymaps = [
    # Alpha dashboard
    {
      action = "<cmd>Alpha<CR>";
      key = "<leader>;";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Dashboard";
      };
    }

    # NvimTree
    {
      action = "<cmd>NvimTreeFindFileToggle<CR>";
      key = "<leader>e";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Explorer";
      };
    }

    # LSP
    {
      # Custom fn from extra_lua.nix which works like IntelliJ
      action = "<cmd>ToggleDefinition<cr>";
      key = ",B";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Go To Definition / Finder";
      };
    }
    {
      action = "<cmd>Lspsaga peek_definition<cr>";
      key = ",b";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Definition";
      };
    }
    # Alt+Enter for code actions like IntelliJ
    {
      action = "<cmd>Lspsaga code_action<cr>";
      key = "<M-CR>";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Code Action";
      };
    }
    {
      action = "<cmd>Telescope diagnostics theme=dropdown<cr>";
      key = "<leader>d";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Diagnostics";
      };
    }
    {
      action = "<cmd>Lspsaga diagnostic_jump_next<CR>";
      key = "]d";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Next Diagnostic";
      };
    }
    {
      action = "<cmd>Lspsaga diagnostic_jump_prev<cr>";
      key = "[d";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Previous Diagnostic";
      };
    }
    {
      action = "<cmd>lua vim.lsp.codelens.run()<cr>";
      key = "<leader>l";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "CodeLens";
      };
    }
    {
      action = ":IncRename ";
      key = ",,";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Incremental Rename (file)";
      };
    }
    {
      action = "<cmd>Lspsaga lsp_rename ++project<cr>";
      key = "<leader>r";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Project-wide Rename";
      };
    }

    # Terminal
    {
      action = "<cmd>ToggleTerm<CR>";
      key = "<C-t>";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "ToggleTerm";
      };
    }
    {
      action = "<cmd>ToggleTerm<CR>";
      key = "<C-t>";
      mode = "t";
      options = {
        noremap = true;
        silent = true;
        desc = "ToggleTerm";
      };
    }

    # Folding
    {
      action = "<cmd>lua require('ufo').openAllFolds()<CR>";
      key = "zR";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Open All Folds";
      };
    }
    {
      action = "<cmd>lua require('ufo').closeAllFolds()<CR>";
      key = "zM";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Close All Folds";
      };
    }

    # Zen mode and twilight
    {
      action = "<cmd>ZenMode<CR>";
      key = "<leader>zz";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Zen Mode";
      };
    }
    {
      action = "<cmd>Twilight<CR>";
      key = "<leader>zt";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Twilight Mode";
      };
    }

    # TreeSJ
    {
      action = "<cmd>lua require('treesj').toggle()<CR>";
      key = "<leader>j";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Toggle treeSJ";
      };
    }

    # Copilot Chat
    {
      action = "<cmd>lua require('CopilotChat').open()<CR>";
      key = ",cc";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Open Copilot Chat";
      };
    }

    # nvim-dap
    {
      action = "<cmd>lua require'dap.ext.vscode'.load_launchjs()<CR>lua require'dap'.continue()<CR>";
      key = "<F5>";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "DAP Continue";
      };
    }
    {
      action = "<cmd>lua require'dap'.step_over()<CR>";
      key = "<F10>";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "DAP Step Over";
      };
    }
    {
      action = "<cmd>lua require'dap'.step_into()<CR>";
      key = "<F11>";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "DAP Step Into";
      };
    }
    {
      action = "<cmd>lua require'dap'.step_out()<CR>";
      key = "<F12>";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "DAP Step Out";
      };
    }
    {
      action = "<cmd>lua require'dap'.toggle_breakpoint()<CR>";
      key = "<F9>";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "DAP Toggle Breakpoint";
      };
    }
    {
      action = "<cmd>lua require'dap'.repl.open()<CR>";
      key = "<F8>";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "DAP REPL Open";
      };
    }

    # dap-ui
    {
      action = "<cmd>lua require'dapui'.toggle()<CR>";
      key = "<F7>";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "DAP UI Toggle";
      };
    }
    {
      action = "<cmd>lua require'dapui'.open()<CR>";
      key = "<F6>";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "DAP UI Open";
      };
    }
    {
      action = "<cmd>lua require'dapui'.close()<CR>";
      key = "<F4>";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "DAP UI Close";
      };
    }
    {
      action = "<cmd>lua require'dapui'.eval(nil, { enter = true })<CR>";
      key = "<F3>";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "DAP UI Evaluate";
      };
    }

    # neotest
    {
      action = "<cmd>lua require'neotest'.run.run()<CR>";
      key = "<leader>tr";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Run nearest test";
      };
    }
    {
      action = "<cmd>lua require'neotest'.run.run(vim.fn.expand('%'))<CR>";
      key = "<leader>tf";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Run tests in file";
      };
    }
    {
      action = "<cmd>lua require'neotest'.run.run({strategy = 'dap'})<CR>";
      key = "<leader>td";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Debug nearest test";
      };
    }
    {
      action = "<cmd>lua require'neotest'.summary.toggle()<CR>";
      key = "<leader>ts";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Toggle test summary";
      };
    }
  ];
}
