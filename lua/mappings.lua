require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
local nomap = vim.keymap.del

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

map("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
map("n", "<leader>pv", vim.cmd.Ex)

map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

nomap("n", "<leader>ff")
map("n", "<leader>pf", "<cmd>Telescope find_files<cr>", { desc = "telescope find files" })

nomap("n", "<leader>h")
map("n", "<C-t>", function()
  require("nvchad.term").new { pos = "sp" }
end, { desc = "terminal new horizontal term" })

nomap("n", "<leader>v")

nomap("n", "<leader>fw")
map("n", "<leader>ps", "<cmd>Telescope live_grep<CR>", { desc = "telescope live grep" })

nomap("n", "<leader>b")

nomap("n", "<tab>")

nomap("n", "<S-tab>")

nomap("n", "<leader>x")

nomap("n", "<leader>ds")
map("n", "<leader>vd", vim.diagnostic.open_float, { desc = "LSP diagnostic loclist" })

map("n", "<leader>vca", vim.lsp.buf.code_action, { noremap = true, silent = true })

map("n", "<leader>vr", vim.lsp.buf.rename, { noremap = true, silent = true })
