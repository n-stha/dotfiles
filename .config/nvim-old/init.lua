require("config.lazy")
vim.api.nvim_create_autocmd("ExitPre", {
  group = vim.api.nvim_create_augroup("Exit", { clear = true }),
  command = "set guicursor=a:ver100-blinkwait700-blinkoff400-blinkon250",
})

if vim.g.neovide then
  vim.o.guifont = "MonaspiceRn Nerd Font Mono:h12"
end
