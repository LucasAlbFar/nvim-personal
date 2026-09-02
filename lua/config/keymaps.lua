-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<leader>=", ":%!black -q -<CR>", { desc = "Format buffer with black" })
-- remove todas as barras invertidas do buffer (útil para JSON/log escapado)
vim.api.nvim_create_user_command("StripBackslashes", function()
  vim.cmd([[%s/\\//g]])
end, { desc = "Remove all backslashes from buffer" })

vim.keymap.set("n", "<leader>u\\", "<cmd>StripBackslashes<CR>", { desc = "Strip backslashes" })
