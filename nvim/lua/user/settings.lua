local options = {
    
    -- Allow clipboard usage
    clipboard = "unnamedplus",
    -- Allow mouse
    mouse = "a",
    -- No swap file
    swapfile = false,
    -- Undo settings
    undofile = true,
    undodir = "$HOME/.config/undo",
    undolevels = 10000,
    undoreload = 10000,
    -- Line numbers
    relativenumber = true,
    -- Tab settings
    autoindent = true,
    expandtab = true,
    tabstop = 4,
    softtabstop = 4,
    shiftwidth = 4,
    -- Cursor options
    scrolloff = 8,
    sidescrolloff = 8,
    -- Colors
    termguicolors = true,
    -- Wrap
    wrap = false

}

for k, v in pairs(options) do
    vim.opt[k] = v
end
