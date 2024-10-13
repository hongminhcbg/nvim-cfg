return {
    {
      "AstroNvim/astrocore",
      ---@type AstroCoreOpts
      opts = {
        mappings = {
          -- first key is the mode
          n = {
            -- second key is the lefthand side of the map
            -- mappings seen under group name "Buffer"
            ["<leader>bb"] = { "<cmd>tabnew<cr>", desc = "New tab" },
            ["<leader>bc"] = { "<cmd>BufferLinePickClose<cr>", desc = "Pick to close" },
            ["<leader>bj"] = { "<cmd>BufferLinePick<cr>", desc = "Pick to jump" },
            ["<leader>bt"] = { "<cmd>BufferLineSortByTabs<cr>", desc = "Sort by tabs" },
            -- tables with the `name` key will be registered with which-key if it's installed
            -- this is useful for naming menus
            ["<leader>b"] = { name = "Buffers" },
            ["gi"] = { "<cmd>Telescope lsp_implementations<cr>" },
            ["gy"] = { "<cmd>Telescope lsp_type_definitions theme=dropdown<cr>" },
            ["grr"] = { "<cmd>Telescope lsp_references <cr>" },
            --["<C-q>"] = { '<cmd>Telescope lsp_references <cr> | <BS><esc>' },
            ["0"] = "$",
            ["9"] = "0",
            -- save all
            ["<C-s>"] = { "<cmd>wa<cr>", desc = "save all" }, -- change description but the same command
          },
          t = {
            -- setting a mapping to false will disable it
            -- ["<esc>"] = false,
          },
          i = {
            -- save all
            ["<C-s>"] = { "<cmd>wa<cr><esc>", desc = "save all" }, -- change description but the same command
            ['"'] = { '""<left>' },
            ['['] = { '[]<left>' },
            ['{'] = { '{}<left>' },
            ["'"] = { "''<left>" },
            ['<c-j>'] = { '<down>' },
            ['<c-k>'] = { '<up>' },
            ['<c-h>'] = { '<left>' },
            ['<c-l>'] = { '<right>' },
          },
          v = {
            ["0"] = "$",
            ["9"] = "0",
          },
        },
      },
    },
    {
      "AstroNvim/astrolsp",
      ---@type AstroLSPOpts
      opts = {
        mappings = {
          n = {
            -- this mapping will only be set in buffers with an LSP attached
            K = {
              function()
                vim.lsp.buf.hover()
              end,
              desc = "Hover symbol details",
            },
            -- condition for only server with declaration capabilities
            gD = {
              function()
                vim.lsp.buf.declaration()
              end,
              desc = "Declaration of current symbol",
              cond = "textDocument/declaration",
            },
          },
        },
      },
    },
    {
      "AstroNvim/astrolsp",
      ---@type AstroLSPOpts
      opts = {
        mappings = {
          n = {
            -- this mapping will only be set in buffers with an LSP attached
            K = {
              function()
                vim.lsp.buf.hover()
              end,
              desc = "Hover symbol details",
            },
            -- condition for only server with declaration capabilities
            gD = {
              function()
                vim.lsp.buf.declaration()
              end,
              desc = "Declaration of current symbol",
              cond = "textDocument/declaration",
            },
          },
        },
      },
    },
  }