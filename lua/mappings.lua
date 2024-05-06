require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
local unmap = vim.keymap.del

-- unbind default keybidings

-- unbind terminal
unmap("n", "<leader>v")
unmap("n", "<leader>h")
unmap({ "n", "t" }, "<A-v>")
unmap({ "n", "t" }, "<A-h>")
unmap({ "n", "t" }, "<A-i>")

-- unbind theme selector
unmap("n", "<leader>th")

-- unbind terminal picker tool
unmap("n", "<leader>pt")

-- custom bindings

-- telescope
map("n", "<leader>tt", "<cmd>Telescope themes<CR>", { desc = "telescope nvchad themes" })
map("n", "<leader>tl", "<cmd>Telescope terms<CR>", { desc = "telescope pick hidden terms" })

-- togglable terms

map("n", "<leader>t<Right>", function()
  require("nvchad.term").toggle { pos = "vsp", id = "vtoggleTerm" }
end, { desc = "terminal togglable vertical term" })

map("n", "<leader>t<Down>", function()
  require("nvchad.term").toggle { pos = "sp", id = "htoggleTerm" }
end, { desc = "terminal togglable horizontal term" })

map("n", "<leader>t<Up>", function()
  require("nvchad.term").toggle { pos = "float", id = "floatTerm" }
end, { desc = "terminal togglable float term" })

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
