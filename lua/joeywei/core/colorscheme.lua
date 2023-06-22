local colorscheme_status, _ = pcall(vim.cmd, "colorscheme nightfly")
if not colorscheme_status then
    print("Colorscheme not loaded!")
    return
end
