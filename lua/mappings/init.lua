local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Leader key --
vim.g.mapleader = " " -- Space

-- ** Mappings Settings ** --
map("n", "w", ":w<CR>", {}) -- Save
map("n", "q", ":q<CR>", {}) -- Close
map("n", "<Leader>qq", ":q!<CR>", {}) -- Forced close
map("n", "tt", ":t.<CR>", {}) -- Copy line

-- Windows --
-- Split window --
map("n", "ss", ":split<Return><C-w>w", {}) -- Split window
map("n", "sv", ":vsplit<Return><C-w>w", {}) -- Split vertical window
-- Move window --
map("n", "s<left>", "<C-w>h", opts)
map("n", "s<up>", "<C-w>k", opts)
map("n", "s<right>", "<C-w>l", opts)
map("n", "s<down>", "<C-w>j", opts)
-- Tree directories --
map("n", "<S-t>", ":NvimTreeToggle<CR>", opts) -- Shift + t
map("n", "<S-f>", ":NvimTreeFocus<CR>", opts) -- Shift + f

-- Bufferline --
-- Move to previous/next
map("n", "<S-left>", ":BufferLineCycleNext<CR>", opts) -- Shift + left arrow
map("n", "<S-right>", ":BufferLineCyclePrev<CR>", opts) -- Shift + right arrow
-- Re-order ti orevuiys/next
map("n", "<A-left>", ":BufferLineMovePrev<CR>", opts) -- Alt + left arrow
map("n", "<A-right>", ":BufferLineMoveNext<CR>", opts) -- Alt + right arrow
-- Goto buffer in position
map("n", "b1", ":BufferLineGoToBuffer 1<CR>", opts)
map("n", "b2", ":BufferLineGoToBuffer 2<CR>", opts)
map("n", "b3", ":BufferLineGoToBuffer 3<CR>", opts)
map("n", "b4", ":BufferLineGoToBuffer 4<CR>", opts)
map("n", "b5", ":BufferLineGoToBuffer 5<CR>", opts)
map("n", "b6", ":BufferLineGoToBuffer 6<CR>", opts)
map("n", "b7", ":BufferLineGoToBuffer 7<CR>", opts)
map("n", "b8", ":BufferLineGoToBuffer 8<CR>", opts)
map("n", "b9", ":BufferLineGoToBuffer 9<CR>", opts)
-- Close buffer
map("n", "<S-c>", ":BufferLinePickClose<CR>", opts) -- Shift + c
-- Magic buffer-picking mode
map("n", "<C-p>", ":BufferLinePick<CR>", opts) -- Control + p

-- Telescope --
map("n", "<leader>ff", ":Telescope find_files<CR>", opts)
map("n", "<leader>fg", ":Telescope live_grep<CR>", opts)
map("n", "<leader>fb", ":Telescope buffers<CR>", opts)

-- LSP attach function
map("n", "<leader>gr", "<cmd>Lspsaga rename<CR>", opts)
map("n", "<leader>gx", "<cmd>Lspsaga code_action<CR>", opts)
map("x", "<leader>gx", ":<c-u>Lspsaga range_code_action<CR>", opts)
map("n", "<leader>K", "<cmd>Lspsaga hover_doc<CR>", opts)
-- map("n", "<leader>go", "<cmd>Lspsaga show_line_diagnostics<CR>", opts)
map("n", "gd", "<cmd>Lspsaga lsp_finder<CR>", opts)
map("n", "gp", "<cmd>Lspsaga rename<CR>", opts)
map("i", "<C-j>", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts)
map("i", "<C-k>", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts)
map("n", "<C-u>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1, '<c-u>')<CR>", {})
map("n", "<C-d>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1, '<c-d>')<CR>", {})

-- Trouble
map("n", "<leader>xx", "<cmd>TroubleToggle<CR>", opts)
map("n", "<leader>xw", "<cmd>Trouble workspace_diagnostics<CR>", opts)
map("n", "<leader>xd", "<cmd>Trouble document_diagnostics<CR>", opts)
map("n", "<leader>xq", "<cmd>Trouble quickfix<CR>", opts)
map("n", "xlr", "<cmd>Trouble lsp_references<CR>", opts)
map("n", "xli", "<cmd>Trouble lsp_implementations<CR>", opts)
