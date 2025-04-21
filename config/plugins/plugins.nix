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
    dap-go = {
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
    jdtls = {
      enable = pkgs.lib.mkDefault true;
    };
    avante = {
      enable = pkgs.lib.mkDefault true;
      settings = {
        provider = "mistral";
        auto_suggestions_provider = "mistral";
        vendors = {
          mistral = {
            __inherited_from = "openai";
            api_key_name = "MISTRAL_API_KEY";
            endpoint = "https://api.mistral.ai/v1/";
            model = "mistral-large-latest";
            max_tokens = 4096;
          };
        };
      };
    };
    blink-cmp-spell = {
      enable = pkgs.lib.mkDefault true;
    };
    blink-cmp-git = {
      enable = pkgs.lib.mkDefault true;
    };
    blink-ripgrep = {
      enable = pkgs.lib.mkDefault true;
    };
    blink-emoji = {
      enable = pkgs.lib.mkDefault true;
    };
    blink-cmp = {
      enable = pkgs.lib.mkDefault true;
      setupLspCapabilities = pkgs.lib.mkDefault true;
      settings = {
        completion = {
          accept = {
            auto_brackets = {
              enabled = true;
              semantic_token_resolution = {
                enabled = false;
              };
            };
          };
          documentation = {
            auto_show = false;
          };
        };
        keymap = {
          preset = "super-tab";
        };
        sources = {
          default = ["lsp" "path" "snippets" "buffer"];
          providers = {
            spell = {
              module = "blink-cmp-spell";
              name = "Spell";
              score_offset = 100;
              opts = {
              };
            };
            emoji = {
              module = "blink-emoji";
              name = "Emoji";
              score_offset = 15;
              # Optional configurations
              opts = {
                insert = true;
              };
            };
            ripgrep = {
              async = true;
              module = "blink-ripgrep";
              name = "Ripgrep";
              score_offset = 10;
              opts = {
                prefix_min_len = 3;
                context_size = 5;
                max_filesize = "1M";
                project_root_marker = ".git";
                project_root_fallback = true;
                search_casing = "--ignore-case";
                additional_rg_options = {};
                fallback_to_regex_highlighting = true;
                ignore_paths = {};
                additional_paths = {};
                debug = false;
              };
            };
            git = {
              module = "blink-cmp-git";
              name = "git";
              score_offset = 100;
              opts = {
                commit = {};
                git_centers = {git_hub = {};};
              };
            };
          };
        };
      };
    };
  };
}
