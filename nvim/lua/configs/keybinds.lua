local function map(m, k, v)
    vim.keymap.set(m, k, v, { noremap = true, silent = true })
end

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Fix n and N. Keeping cursor in center
map('n', 'n', 'nzz')
map('n', 'N', 'Nzz')

-- Enter normal mode faster
map('i', 'jk', '<ESC>')
map('i', 'kj', '<ESC>')
map('i', 'KJ', '<ESC>')
map('i', 'JK', '<ESC>')

-- Delete faster
map('n', '<leader>d', 'dd')

-- Maintain cursor in the center while ctrl + u/d
map('n', '<C-d>', '<C-d>zz')
map('n', '<C-u>', '<C-u>zz')

-- Faster: search text
map('n', '<leader>s', '/')

-- Don't yank when pasting
map("v", "p", '"_dP', opts)

-- Nohl command to CRTL + N
map('n', '<C-N>', ':nohl<CR>')

-- Indent with tab
map("v", "<S-Tab>", "<gv")
map("v", "<Tab>", ">gv")
map("n", "<S-Tab>", "<<")
map("n", "<Tab>", ">>")

-- Replace word where the cursor is
map("n", "<leader>r", [[:%s/\<<C-r><C-w>\>//gI<Left><Left><Left>]])

-- Quickly save the current buffer or all buffers
map('n', '<leader>w', '<CMD>update<CR>')
map('n', '<leader>W', '<CMD>wall<CR>')

-- Quit neovim
map('n', '<leader>q', '<CMD>q<CR>')

-- Quit and Save neovim
map('n', '<leader>wq', '<CMD>wq<CR>')

-- leader-o/O inserts blank line below/above
map('n', '<leader>o', 'o<ESC>')
map('n', '<leader>O', 'O<ESC>')

-- Move line up and down in NORMAL and VISUAL modes
-- Reference: https://vim.fandom.com/wiki/Moving_lines_up_or_down
map('n', '<A-j>', '<CMD>move .+1<CR>')
map('n', '<A-k>', '<CMD>move .-2<CR>')
map('x', '<A-j>', ":move '>+1<CR>gv=gv")
map('x', '<A-k>', ":move '<-2<CR>gv=gv")

-- Use operator pending mode to visually select the whole buffer
-- e.g. dA = delete buffer ALL, yA = copy whole buffer ALL
map('o', 'A', ':<C-U>normal! mzggVG<CR>`z')
map('x', 'A', ':<C-U>normal! ggVG<CR>')

---------------------- Open Custom apps ----------------------
map('v', '<C-g>', ':<C-u>ChatGPTEditWithInstructions<CR>gv')
map('n', '<C-g>', ':ChatGPTEditWithInstructions<CR>')
map('v', '<C-p>', ':ChatGPTRun ')
map('n', '<C-p>', ':ChatGPTRun ')

---------------------- Files ----------------------

-- Easy access for file tree
map('n', '<leader>e', ':NvimTreeFindFileToggle!<CR>')

-- Close buffer
map('n', '<leader>c', ':bd<CR>')

---------------------- Windows and Buffers ----------------------

-- Better window navigation
map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")

-- Resize with arrows
map("n", "<C-A-j>", ":resize -2<CR>")
map("n", "<C-A-k>", ":resize +2<CR>")
map("n", "<C-A-l>", ":vertical resize -2<CR>")
map("n", "<C-A-h>", ":vertical resize +2<CR>")

-- Navigate buffers
map("n", "<S-l>", ":bnext<CR>")
map("n", "<S-h>", ":bprevious<CR>")

-- Move to last buffer
map('n', "''", '<CMD>b#<CR>')

-- Copying the vscode behaviour of making tab splits
map('n', '<leader>b', '<CMD>vsplit<CR>')
map('n', '<leader>\\', '<CMD>split<CR>')

---------------------- TMUX ----------------------

map('n', 'C-h', '<CMD>TmuxNavigateLeft<CR>')
map('n', 'C-l', '<CMD>TmuxNavigateRight<CR>')
map('n', 'C-j', '<CMD>TmuxNavigateDown<CR>')
map('n', 'C-k', '<CMD>TmuxNavigateUp<CR>')

---------------------- Style ----------------------
-- Change colorscheme to text style
-- map("n", "<C-p>", ":colorscheme peachpuff<CR>")
