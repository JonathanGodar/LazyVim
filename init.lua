-- bootstrap lazy.nvim, LazyVim and your plugins
-- Disable news popup, Found using chatgpt
vim.g.lazyvim_check_updates = false
vim.g.lazyvim_news_enabled = false

require("config.lazy")
