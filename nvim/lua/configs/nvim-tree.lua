require("nvim-tree").setup({
  sort_by = "case_sensitive",
  auto_reload_on_write = true,
  remove_keymaps = {"<C-t>"},
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

local function open_nvim_tree()

  -- open the tree
  require("nvim-tree.api").tree.open()
end

-- vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })
