-- import lspsaga safely
local saga_status, saga = pcall(require, "lspsaga")
if not saga_status then
    print("saga not found!")
    return
end


saga.setup({
    -- keybinds for navigation in lspsaga window
    scroll_preview = { scroll_down = "<C-f>", scroll_up = "<C-b>" },
    -- use enter to open file with definition preview
    definition = {
        edit = "<CR>",
    },
    symbol_in_winbar = {
        enable = false,
    },
    ui = {
        normal_bg = "#022746",
    },
})
