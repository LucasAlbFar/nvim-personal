-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
if vim.env.SSH_CONNECTION then
  -- clipboard via OSC 52 (terminal repassa pelo SSH, sem xclip no servidor)
  vim.g.clipboard = "osc52"

  -- desliga animações do snacks (scroll suave, indent) para reduzir redraw
  vim.g.snacks_animate = false

  -- resposta mais rápida a teclas compostas e ao Esc
  vim.opt.ttimeoutlen = 10
  vim.opt.autowriteall = true
end
