local status, markdownPreview = pcall(require, 'markdown-preview')
if not status then return end

markdownPreview.setup {}
