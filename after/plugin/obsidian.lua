local status, obsidian = pcall(require, 'obsidian')
if (not status) then return end

-- Set up the Obsidian plugin with full features enabled
obsidian.setup {
  ui = {
    enable = true, -- Enable all UI features
  },
  workspaces = 
  {
    {
      name = "personal",
      path = "~/vaults/personal",
    },
    {
      name = "work",
      path = "~/vaults/work",
    },
  },
}

