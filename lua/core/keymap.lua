vim.g.mapleader = " "
vim.api.nvim_set_keymap("i", "jk", "<Esc>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "gh", "^", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "gl", "$", { noremap = true, silent = true })

local n = true -- this would be your condition variable
vim.keymap.set("n", "<leader>e", function()
    if n then
        vim.cmd("Neotree reveal")
    else
        vim.cmd("Neotree close")
    end
    n = not n -- toggle the state for next press
end)
