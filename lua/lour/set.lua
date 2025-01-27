vim.g.mapleader = " "

vim.scriptencoding = "utf-8"
vim.opt.encoding = "utf-8"

vim.opt.fileencoding = "utf-8"

vim.opt.number = true

vim.opt.termguicolors = true
vim.opt.title = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.hlsearch = true
vim.opt.backup = false
vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 2
vim.opt.expandtab = true
vim.opt.scrolloff = 10
vim.opt.shell = "zsh"
vim.opt.backupskip = { "/tmp/*", "/private/tmp/*" }
vim.opt.inccommand = "split"
vim.opt.ignorecase = true -- Case insensitive searching UNLESS /C or capital in search
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.wrap = false -- No Wrap lines
vim.opt.backspace = { "start", "eol", "indent" }
vim.opt.path:append({ "**" }) -- Finding files - Search down into subfolders
vim.opt.wildignore:append({ "*/node_modules/*" })
vim.opt.splitbelow = true -- Put new windows below current
vim.opt.splitright = true -- Put new windows right of current
vim.opt.splitkeep = "cursor"
vim.opt.mouse = ""

-- Undercurl
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])

-- Add asterisks in block comments
vim.opt.formatoptions:append({ "r" })

vim.opt.clipboard:append { "unnamedplus" }

vim.opt.relativenumber = true


-- Create an autocmd group for Markdown conceal settings
vim.api.nvim_create_augroup("ObsidianMarkdownConceal", { clear = true })

-- Define the specific paths for all Markdown files
local markdown_paths = {
    "/Users/lour/vaults/personal/**/*.md",
    "/Users/lour/vaults/work/**/*.md",
}

-- Add autocmd to set conceallevel for matching files
for _, pattern in ipairs(markdown_paths) do
  vim.api.nvim_create_autocmd("BufEnter", {
    group = "ObsidianMarkdownConceal",
    pattern = pattern,
    callback = function()
      print("Setting conceallevel to 2")
      vim.o.conceallevel = 2 -- Set conceal level
    end,
  })

  vim.api.nvim_create_autocmd("BufLeave", {
    group = "ObsidianMarkdownConceal",
    pattern = pattern,
    callback = function()
      print("Setting conceallevel to 0")
      vim.o.conceallevel = 0 -- Reset conceal level
    end,
  })
end
