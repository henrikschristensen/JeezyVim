{pkgs, ...}: {
  plugins = {
    nvim-autopairs = {
      enable = pkgs.lib.mkDefault true;
      settings.checkTs = pkgs.lib.mkDefault true;
    };
    crates.enable = pkgs.lib.mkDefault true;
    bacon.enable = pkgs.lib.mkDefault true;
    lastplace.enable = pkgs.lib.mkDefault true;
    todo-comments = {
      enable = pkgs.lib.mkDefault true;
      settings = {
        mergeKeywords = pkgs.lib.mkDefault true;
        highlight = {
          before = "";
          after = "fg";
          keyword = "wide";
        };
        keywords = {
          QUESTION = {icon = "";};
        };
      };
    };
    comment.enable = pkgs.lib.mkDefault true;
    sleuth.enable = pkgs.lib.mkDefault true;
    nvim-tree = {
      enable = pkgs.lib.mkDefault true;
      updateFocusedFile.enable = pkgs.lib.mkDefault true;
    };
    toggleterm = {
      enable = pkgs.lib.mkDefault true;
      settings = {
        direction = "float";
        floatOpts = {border = "single";};
        terminalMappings = pkgs.lib.mkDefault true;
      };
    };
    illuminate = {
      enable = pkgs.lib.mkDefault true;
      underCursor = pkgs.lib.mkDefault true;
    };
    navic = {
      enable = pkgs.lib.mkDefault true;
      settings = {
        highlight = pkgs.lib.mkDefault true;
        lsp.autoAttach = pkgs.lib.mkDefault true;
      };
    };
    colorizer.enable = pkgs.lib.mkDefault true;
    marks.enable = pkgs.lib.mkDefault true;
    vim-matchup = {
      enable = pkgs.lib.mkDefault true;
      treesitter.enable = pkgs.lib.mkDefault true;
      settings.transmute_enabled = pkgs.lib.mkDefault 1;
      settings.surround_enabled = pkgs.lib.mkDefault 1;
    };
    web-devicons.enable = true;
    copilot-vim = {
      enable = pkgs.lib.mkDefault true;
    };
    copilot-chat = {
      enable = pkgs.lib.mkDefault true;
      settings = {
        window = {
          layout = "float";
        };
      };
    };
    dap = {
      enable = pkgs.lib.mkDefault true;
      settings = {};
    };
    dap-ui = {
      enable = pkgs.lib.mkDefault true;
      settings = {};
    };
    neotest = {
      enable = pkgs.lib.mkDefault true;
      adapters = {
        dotnet = {
          enable = pkgs.lib.mkDefault true;
          settings = {};
        };
        go = {
          enable = pkgs.lib.mkDefault true;
          settings = {};
        };
      };
      settings = {
        summary.enable = pkgs.lib.mkDefault true;
      };
    };
  };
}
