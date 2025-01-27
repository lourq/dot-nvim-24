function rmBackground(color)
    color = color or 'sunbather'
    vim.cmd.colorscheme(color)
--
--     -- Remove background
    -- for _, group in pairs(vim.fn.getcompletion('', 'highlight')) do
    --     local hl = vim.api.nvim_get_hl_by_name(group, true)
    --     if hl.background then
    --         vim.api.nvim_set_hl(0, group, {bg = ''})
    --     end
    -- end
end
--
rmBackground()
