local colorscheme_status, _ = pcall(vim.cmd, "colorscheme moonfly")
if not colorscheme_status then
    print("Colorscheme not loaded!")
    return
end

vim.cmd([[
    hi TablineSel guibg=#1c1c1c guifg=#e2eded
    hi! link CursorLineNr TablineSel

    hi! link Type MoonflyTurquoise
    hi! link @type.builtin Type

    hi! link String MoonflyYellow
    hi! link Constant String
    hi! link Boolean String
    hi! link Character String
    hi! link @constant.builtin String
    hi! link @string.escape String
    hi! link @error String

    hi! link @keyword.operator @repeat

    hi! link @constructor Function
    hi! link @function.call Function
    hi! link @function.macro Function

    hi! link PreProc @repeat
    hi! link @define PreProc
    hi! link @preproc PreProc
    hi! link @include PreProc

    hi! link @parameter Variable
    hi! link @constant Variable
    hi! link @field Variable
    hi! link @property Variable
    hi! link @variable Variable
    hi! link @variable.builtin Variable
    hi! link @Identifier Variable
    hi! link @identifier Variable

    hi @namespace guifg=#ecacb6
    hi! link @type.qualifier @namespace
    hi! link @storageclass @namespace
]])
