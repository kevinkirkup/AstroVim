--              AstroNvim Configuration Table
-- All configuration changes should go inside of the table below

-- You can think of a Lua "table" as a dictionary like data structure the
-- normal format is "key = value". These also handle array like data structures
-- where a value with no key simply has an implicit numeric key
local config = {

        -- Configure AstroNvim updates
        updater = {
                remote = "origin", -- remote to use
                channel = "stable", -- "stable" or "nightly"
                version = "latest", -- "latest", tag name, or regex search like "v1.*" to only do updates before v2 (STABLE ONLY)
                -- branch = "main", -- branch name (NIGHTLY ONLY)
                -- commit = nil, -- commit hash (NIGHTLY ONLY)
                pin_plugins = nil, -- nil, true, false (nil will pin plugins on stable only)
                skip_prompts = false, -- skip prompts about breaking changes
                show_changelog = true, -- show the changelog after performing an update
                auto_reload = false, -- automatically reload and sync packer after a successful update
                auto_quit = false, -- automatically quit the current session after a successful update
                -- remotes = { -- easily add new remotes to track
                --   ["remote_name"] = "https://remote_url.come/repo.git", -- full remote url
                --   ["remote2"] = "github_user/repo", -- GitHub user/repo shortcut,
                --   ["remote3"] = "github_user", -- GitHub user assume AstroNvim fork
                -- },
        },

        -- Set colorscheme to use
        -- colorscheme = "default_theme",
        colorscheme = "blackboard",

        -- Add highlight groups in any theme
        highlights = {
                init = { -- this table overrides highlights in all themes
                        Normal = { fg = "#ffffff", bg = "#0D1021" },

                        Comment = { fg = "#aeaeae" },
                        Constant = { fg = "#d7fa41" },
                        String = { fg = "#64ce3e" },
                        Statement = { fg = "#f8de33" },
                        Entity = { fg = "#fa6513" },
                        Support = { fg = "#8fa6cd" },
                        LineNr = { fg = "#aeaeae", bg = "#000000" },
                        Title = { fg = "#f6f3e8" },
                        NonText = { fg = "#808080", bg = "#0D1021" },
                        VertSplit = { fg = "#444444", bg = "#444444" },
                        StatusLine = { fg = "#f6f3e8", bg = "#444444" },
                        StatusLineNC = { fg = "#857b6f", bg = "#444444" },
                        SpecialKey = { fg = "#808080", bg = "#343434" },
                        Define = { fg = "#fa6513" },
                        Function = { fg = "#fa6513" },
                        Structure = { fg = "#8fa6cd" },
                        Special = { fg = "#8fa6cd" },
                        Test = { fg = "#8fa6cd" },
                        Character = { fg = "#d7fa41" },
                        Number = { fg = "#d7fa41" },
                        Boolean = { fg = "#d7fa41" },
                        Float = { fg = "#d7fa41" },
                        Conditional = { fg = "#f8de33" },
                        StorageClass = { fg = "#f8de33" },
                        Operator = { fg = "#f8de33" },
                        Pmenu = { fg = "#FFFFFF", bg = "#101010" },
                        PmenuSel = { fg = "#FFFFFF", bg = "#0D1021" },

                }
                -- duskfox = { -- a table of overrides/changes to the duskfox theme
                --   Normal = { bg = "#000000" },
                -- },
        },

        -- set vim options here (vim.<first_key>.<second_key> =  value)
        options = {
                opt = {
                        -- set to true or false etc.
                        relativenumber = true, -- sets vim.opt.relativenumber
                        number = true, -- sets vim.opt.number
                        spell = true, -- sets vim.opt.spell
                        signcolumn = "auto", -- sets vim.opt.signcolumn to auto
                        wrap = false, -- sets vim.opt.wrap
                },
                g = {
                        mapleader = "\\", -- sets vim.g.mapleader
                        autoformat_enabled = true, -- enable or disable auto formatting at start (lsp.formatting.format_on_save must be enabled)
                        cmp_enabled = true, -- enable completion at start
                        autopairs_enabled = true, -- enable autopairs at start
                        diagnostics_enabled = true, -- enable diagnostics at start
                        status_diagnostics_enabled = true, -- enable diagnostics in statusline
                        icons_enabled = true, -- disable icons in the UI (disable if no nerd font is available, requires :PackerSync after changing)
                },
        },
        -- If you need more control, you can use the function()...end notation
        -- options = function(local_vim)
        --   local_vim.opt.relativenumber = true
        --   local_vim.g.mapleader = " "
        --   local_vim.opt.whichwrap = vim.opt.whichwrap - { 'b', 's' } -- removing option from list
        --   local_vim.opt.shortmess = vim.opt.shortmess + { I = true } -- add to option list
        --
        --   return local_vim
        -- end,

        -- Set dashboard header
        header = {
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣶⣦⠀⠀⠀⠀⠀⠀⠀⠀⢀⣤⣶⢟⠫⣿",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⠛⣿⡄⠀⠀⠀⠀⠀⣀⣶⠿⠋⡐⢀⠂⣿⡆",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⢃⠐⠹⣿⡄⠀⠀⣠⣾⠟⠡⠀⠅⠠⠀⠂⣿⡇",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⡏⠠⢈⠠⠘⢿⣦⣾⠟⢁⠨⠀⠡⠀⠅⠈⠄⢺⡇",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⠁⡂⠄⠂⡈⢈⠙⡋⡀⠂⡐⢈⠠⠁⠨⢀⠁⢾⡇",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣿⣦⣄⣀⣀⣿⡐⠀⢂⠁⠄⠂⡐⢀⠐⡀⢂⠀⢂⠈⠄⠂⠠⢹⠷⠶⠿⠛⠛⠛⠛⠛⣻⡿",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⢈⠉⠛⠛⠛⡃⢈⢠⠴⡘⠪⠉⠍⡙⡑⡒⠪⢤⡐⢈⠠⠁⠂⡁⠂⠂⡁⠌⠠⠁⣼⡟",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⣇⢈⠈⠄⡁⢄⠖⡉⠄⢂⠡⠁⠅⡐⡀⡂⠅⠂⠍⠲⣔⠈⠠⠐⢈⠠⠐⢀⠡⢸⡿",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣿⣄⠂⡐⢰⢋⠐⠠⢁⠂⠌⠨⢐⢀⢂⢐⠨⠈⠌⡐⠨⢇⠈⠄⠂⠐⡈⠠⢰⡿",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣻⣧⠤⣧⣂⠌⠨⢐⠈⠌⠨⣀⣢⠔⡚⢉⡽⢐⠠⢁⠚⡌⠠⠁⡁⠄⠸⢿⣥⣤⡀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣿⡟⠟⠋⢍⡲⠤⣐⣉⢉⠒⠚⠊⡉⣉⣠⠴⢎⡍⠨⠠⠨⠐⡈⢣⢁⠐⢀⠂⡁⢐⠈⡉⠛⡻⠶⣦⣄⣀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢙⣿⣶⣱⣋⡀⡀⠀⠉⠉⡇⣱⠋⢉⣉⣀⣀⣄⣨⣳⣨⡠⢁⢂⢹⠠⠐⠠⠐⢀⠐⡀⠂⡁⠄⠨⢠⣽⡿",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣾⠋⠀⠀⠀⠀⠀⠉⠙⢯⠉⡍⠁⠀⠀⠀⠀⠀⠀⠀⠀⠈⣆⣂⢼⠐⡈⠠⢈⠠⠐⠀⣂⣴⣶⠟⠛⠁",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡯⢹⠀⠀⠀⠀⠀⠀⠀⠀⢼⠶⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⢸⡻⡅⡀⠂⠄⢂⣼⡾⠟⠁⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠻⣾⠀⠀⠀⠀⠀⠀⠀⢠⡯⢂⠱⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⡟⠠⢹⢯⢦⢈⠐⢈⠻⢷⣦⣀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣷⣤⣀⣀⣀⣠⢤⢫⠃⡂⢌⢘⠒⠤⣄⣀⣀⣀⣀⡤⠜⡁⠡⠚⠥⣿⡇⠐⠠⠐⡀⠌⢙⠻⣦⣄",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⢻⡧⢐⢀⢺⢐⡠⠏⠠⡈⠂⠅⠊⠄⢂⢐⠠⠡⠠⠁⠅⠡⡀⢧⢁⠂⡁⠄⠂⣐⣠⡾⠟",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠨⣿⣀⠂⠄⠍⠌⡐⠡⠠⠁⠅⠡⠨⠰⣄⠂⠅⠨⠈⠌⡐⢐⡞⠀⠄⣐⣠⣷⠿⠉",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⠟⣠⡬⠦⠥⠦⠦⠥⠬⠬⡬⢬⡤⠕⠠⣻⠈⠌⡘⡲⠚⡉⡀⠻⢿⣟⡉⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣴⣶⣤⡀⠀⠀⠀⠀⠀⠀⢿⣎⣄⣄⠑⡈⡐⠨⠀⢅⢞⡴⠑⠠⡡⠵⠃⠌⡐⢠⠇⠂⠄⠐⣈⣠⣹⣿⡧",
                "⠀⠀⠀⠀⠀⠀⠀⣠⡾⠋⢄⣠⠭⠻⢷⣦⡀⠀⠀⠀⠀⠉⠹⣷⡁⡐⠠⢁⣱⡯⢋⢀⠊⡐⢐⠈⠌⡐⣠⠏⠠⠁⡙⠿⣿⡉⠉",
                "⠀⠀⠀⠀⠀⠀⣴⡟⠡⢱⢊⣤⠦⢛⡭⠚⢻⣷⠀⠀⠀⠀⠀⠙⣷⡠⢁⡲⠋⠄⡂⡐⢐⠐⡐⠨⢐⣴⣧⣌⣀⠡⠀⢂⠙⢷⣄",
                "⠀⠀⠀⠀⠀⠀⢿⣆⢁⠂⠄⡐⡚⡁⣂⢅⡂⢿⡇⠀⠀⠀⠀⠀⠈⠿⣦⣆⣡⣁⡐⢐⣐⣐⡠⠗⣿⡍⠈⠉⠛⠻⠿⠿⠿⠿⠏",
                "⠀⠀⠀⠀⠀⠀⠈⣿⡄⠌⡐⡀⡂⠄⣻⡿⣧⣹⡇⠀⠀⠀⠀⠀⠀⠀⣈⣉⣙⣿⠍⠩⢈⠂⡂⠡⣸⣷⣤⣤⣀⣀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠘⣷⡁⡐⡀⡂⠡⣽⠇⠈⠉⠀⠀⠀⠀⣠⣴⠾⡛⠛⡛⠋⣟⢷⠁⡂⢂⣞⢫⢹⣠⠠⡉⡙⢛⠻⢶⣤⣄",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠸⣧⢐⢀⢂⣱⣿⠀⠀⠀⠀⠀⠀⣸⣏⣐⠴⡚⡉⠢⢡⡇⣇⠢⠠⡹⡢⡱⣽⠠⢉⠓⠮⣔⡨⢐⠨⠹⣷⡀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⡗⡲⡒⢖⢻⡇⠀⠀⣠⣴⠾⡛⠩⢐⠨⢐⠨⠨⢸⡣⠪⡎⣸⢣⠱⣐⡗⠨⠠⡡⢁⢂⠍⠲⢥⡡⠨⢻⣆",
                "⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣧⣱⣸⣘⣼⣷⣦⠘⢿⣤⣢⠨⠨⠂⠅⢅⠊⠌⣜⢎⠕⡧⢏⠆⡇⡒⡇⡡⠑⢄⢑⠐⠌⠌⣔⡼⢊⠌⢿⡄",
                "⠀⠀⠀⠀⠀⠀⠀⠀⢸⣗⠠⠠⡀⡢⢐⢀⣿⠀⢠⡿⢁⠍⡓⢥⣕⡐⡡⠡⡧⡑⢕⢸⠰⡱⡘⡌⡇⡐⣑⣰⠥⡚⢫⠩⡐⠄⠅⠌⠌⣿⡀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⢸⣗⠨⠨⡐⡐⡐⠄⣿⢠⡿⡁⠢⡨⠐⣽⡰⠩⠠⡡⣏⢎⠪⡂⢇⠪⡂⣇⠇⢂⠜⢆⠅⡂⠅⢷⠐⡡⠡⡑⠡⠹⣷",
                "⠀⠀⠀⠀⠀⠀⠀⠀⢸⡧⢈⢂⠢⢂⠊⠌⣿⣿⠡⠨⠨⠠⣑⡜⠡⠡⡑⢸⡣⢪⢘⠜⡌⢎⢪⢸⠠⢁⠢⢉⢣⡨⠨⠨⣎⠄⠅⢌⠌⡂⣻⡇",
        },

        -- Default theme configuration
        default_theme = {
                -- Modify the color palette for the default theme
                colors = {
                        fg = "#abb2bf",
                        bg = "#1e222a",
                },
                highlights = function(hl) -- or a function that returns a new table of colors to set
                        local C = require "default_theme.colors"

                        hl.Normal = { fg = C.fg, bg = C.bg }

                        -- New approach instead of diagnostic_style
                        hl.DiagnosticError.italic = true
                        hl.DiagnosticHint.italic = true
                        hl.DiagnosticInfo.italic = true
                        hl.DiagnosticWarn.italic = true

                        return hl
                end,
                -- enable or disable highlighting for extra plugins
                plugins = {
                        aerial = true,
                        beacon = false,
                        bufferline = true,
                        cmp = true,
                        dashboard = true,
                        highlighturl = true,
                        hop = false,
                        indent_blankline = true,
                        lightspeed = false,
                        ["neo-tree"] = true,
                        notify = true,
                        ["nvim-tree"] = false,
                        ["nvim-web-devicons"] = true,
                        rainbow = true,
                        symbols_outline = false,
                        telescope = true,
                        treesitter = true,
                        vimwiki = false,
                        ["which-key"] = true,
                },
        },

        -- Diagnostics configuration (for vim.diagnostics.config({...})) when diagnostics are on
        diagnostics = {
                virtual_text = true,
                underline = true,
        },

        -- Extend LSP configuration
        lsp = {
                -- enable servers that you already have installed without mason
                servers = {
                        -- "pyright"
                },
                formatting = {
                        -- control auto formatting on save
                        format_on_save = {
                                enabled = true, -- enable or disable format on save globally
                                allow_filetypes = { -- enable format on save for specified filetypes only
                                        -- "go",
                                },
                                ignore_filetypes = { -- disable format on save for specified filetypes
                                        -- "python",
                                },
                        },
                        disabled = { -- disable formatting capabilities for the listed language servers
                                -- "sumneko_lua",
                        },
                        timeout_ms = 1000, -- default format timeout
                        -- filter = function(client) -- fully override the default formatting function
                        --   return true
                        -- end
                },
                -- easily add or disable built in mappings added during LSP attaching
                mappings = {
                        n = {
                                -- ["<leader>lf"] = false -- disable formatting keymap
                        },
                },
                -- add to the global LSP on_attach function
                -- on_attach = function(client, bufnr)
                -- end,

                -- override the mason server-registration function
                -- server_registration = function(server, opts)
                --   require("lspconfig")[server].setup(opts)
                -- end,

        },

        -- Mapping data with "desc" stored directly by vim.keymap.set().
        --
        -- Please use this mappings table to set keyboard mapping since this is the
        -- lower level configuration and more robust one. (which-key will
        -- automatically pick-up stored data by this setting.)
        mappings = {
                -- first key is the mode
                n = {
                        -- second key is the lefthand side of the map
                        -- mappings seen under group name "Buffer"
                        ["<leader>bb"] = { "<cmd>tabnew<cr>", desc = "New tab" },
                        ["<leader>bc"] = { "<cmd>BufferLinePickClose<cr>", desc = "Pick to close" },
                        ["<leader>bj"] = { "<cmd>BufferLinePick<cr>", desc = "Pick to jump" },
                        ["<leader>bt"] = { "<cmd>BufferLineSortByTabs<cr>", desc = "Sort by tabs" },
                        -- quick save
                        -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
                        ["<C-w><C-t>"] = { "<cmd>Neotree toggle=true<cr>", desc = "Toggle Neotree" }
                },
                t = {
                        -- setting a mapping to false will disable it
                        -- ["<esc>"] = false,
                },
        },

        -- LuaSnip Options
        luasnip = {
                -- Add paths for including more VS Code style snippets in luasnip
                vscode_snippet_paths = {},
                -- Extend filetypes
                filetype_extend = {
                        -- javascript = { "javascriptreact" },
                },
        },

        -- CMP Source Priorities
        -- modify here the priorities of default cmp sources
        -- higher value == higher priority
        -- The value can also be set to a boolean for disabling default sources:
        -- false == disabled
        -- true == 1000
        cmp = {
                source_priority = {
                        nvim_lsp = 1000,
                        luasnip = 750,
                        buffer = 500,
                        path = 250,
                },
        },

        -- Modify which-key registration (Use this with mappings table in the above.)
        ["which-key"] = {
                -- Add bindings which show up as group name
                register = {
                        -- first key is the mode, n == normal mode
                        n = {
                                -- second key is the prefix, <leader> prefixes
                                ["<leader>"] = {
                                        -- third key is the key to bring up next level and its displayed
                                        -- group name in which-key top level menu
                                        ["b"] = { name = "Buffer" },
                                },
                        },
                },
        },

        -- This function is run last and is a good place to configuring
        -- augroups/autocommands and custom filetypes also this just pure lua so
        -- anything that doesn't fit in the normal config locations above can go here
        polish = function()
                -- Set up custom filetypes
                -- vim.filetype.add {
                --   extension = {
                --     foo = "fooscript",
                --   },
                --   filename = {
                --     ["Foofile"] = "fooscript",
                --   },
                --   pattern = {
                --     ["~/%.config/foo/.*"] = "fooscript",
                --   },
                -- }
        end,
}

return config
