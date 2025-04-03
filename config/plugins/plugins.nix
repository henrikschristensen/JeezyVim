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
    dap = {
      enable = pkgs.lib.mkDefault true;
      adapters.executables.coreclr = {
        command = "netcoredbg";
        args = ["--interpreter=vscode"];
      };
      settings = {};
    };
    dap-ui = {
      enable = pkgs.lib.mkDefault true;
      settings = {};
    };
    dap-virtual-text = {
      enable = pkgs.lib.mkDefault true;
      settings = {};
    };
    neotest = {
      enable = pkgs.lib.mkDefault true;
      adapters = {
        dotnet = {
          enable = pkgs.lib.mkDefault true;
          settings = {
            args = {
              justMyCode = false;
            };
            dotnet_additional_args = [
              "--verbosity detailed"
            ];
            dap = {
              adapter_name = "coreclr";
            };
            discovery_root = "solution";
          };
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
