local Remap = require("nepsaco.keymap")
local nnoremap = Remap.nnoremap

nnoremap("<C-p>", ":Telescope")
nnoremap("<leader>pg", function()
    require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})
end)
nnoremap("<leader>pgf", function()
    require('telescope.builtin').git_files()
end)
nnoremap("<Leader>pp", function()
    require('telescope.builtin').find_files()
end)

-- nnoremap("<leader>pgs", function()
--     require('telescope.builtin').grep_string { search = vim.fn.expand("<cword>") }
-- end)
nnoremap("<leader>pb", function()
    require('telescope.builtin').buffers()
end)
nnoremap("<leader>ph", function()
    require('telescope.builtin').help_tags()
end)

nnoremap("<leader>prc", function()
    require('nepsaco.telescope').search_dotfiles({ hidden = true })
end)
-- nnoremap("<leader>pgb", function()
--     require('nepsaco.telescope').git_branches()
-- end)
nnoremap("<leader>gm", function()
    require('telescope').extensions.git_worktree.create_git_worktree()
end)

