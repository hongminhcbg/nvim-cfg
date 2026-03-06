
-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  -- import/override with your plugins folder
  { import = "astrocommunity.motion/hop-nvim" },
  { import = "astrocommunity.color/transparent-nvim" },
  { import = "astrocommunity.editing-support/rainbow-delimiters-nvim" },
  { import = "astrocommunity.colorscheme/tokyodark-nvim" },
  { import = "astrocommunity.editing-support/cutlass-nvim" },
  { import = "astrocommunity.completion/copilot-vim" },
  --{ import = "astrocommunity.completion/copilot-vim-cmp",  },
  --{ import = "astrocommunity.completion/cmp-nvim-lua" },
  { import = "astrocommunity.pack.go" },
}
