local keymap = vim.keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = " "
-- Declare a global variable to track line wrapping state
_G.wrap_enabled = true

keymap.set("n", "<leader>pv", vim.cmd.Ex)

keymap.set("v", "J", ":m '>+26<CR>gv=gv")
keymap.set("v", "K", ":m '<18<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")

keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")

keymap.set('n', 'te', ':tabedit<Return>', {silent = true})

vim.keymap.set("n", "]t", function()
  require("todo-comments").jump_next()
end, { desc = "Next todo comment" })

vim.keymap.set("n", "[t", function()
  require("todo-comments").jump_prev()
end, { desc = "Previous todo comment" })

-- You can also specify a list of valid jump keywords

vim.keymap.set("n", "]t", function()
  require("todo-comments").jump_next({keywords = { "ERROR", "WARNING" }})
end, { desc = "Next error/warning todo comment" })


-- Define a global function to toggle line wrapping
function _G.toggle_wrap()
  if wrap_enabled then
    vim.cmd('set nowrap')  -- Disable line wrapping
    wrap_enabled = false   -- Update state to indicate wrapping is off
  else
    vim.cmd('set wrap')    -- Enable line wrapping
    wrap_enabled = true    -- Update state to indicate wrapping is on
  end
end

-- Map the function to a keybinding
vim.api.nvim_set_keymap('n', '<D-z>', ':lua toggle_wrap()<CR>', { noremap = true, silent = true })
