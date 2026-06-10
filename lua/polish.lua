-- This will run last in the setup process.
-- This is just pure lua so anything that doesn't
-- fit in the normal config locations above can go here
-- This will run last in the setup process and is a good place to configure
-- things like custom filetypes. This just pure lua so anything that doesn't
-- fit in the normal config locations above can go here
-- Set up custom filetypes
vim.filetype.add {
    extension = {
        foo = "fooscript"
    },
    filename = {
        ["Foofile"] = "fooscript"
    },
    pattern = {
        ["~/%.config/foo/.*"] = "fooscript"
    }
}
-- vim.api.nvim_set_keymap("n", "<leader>z", "<cmd>echo 'hello'<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-j>", "10j", {
    noremap = true,
    silent = true
});
vim.api.nvim_set_keymap("n", "<C-k>", "10k", {
    noremap = true,
    silent = true
});
vim.api.nvim_set_keymap("v", "<C-j>", "10j", {
    noremap = true,
    silent = true
});
vim.api.nvim_set_keymap("v", "<C-k>", "10k", {
    noremap = true,
    silent = true
});
vim.api.nvim_set_keymap("v", "y", "y`]", {
    noremap = true,
    silent = true
});
--vim.keymap.set('i', '<C-y>', 'copilot#Accept("\\<CR>")', {
--    expr = true,
 --   replace_keycodes = false
--})
vim.g.copilot_no_tab_map = true

-- Autocmd to organize imports before saving
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.go",
  callback = function()
    -- Request organizeImports from gopls
    vim.lsp.buf.code_action({ context = { only = { "source.organizeImports" } }, apply = true })
  end,
})