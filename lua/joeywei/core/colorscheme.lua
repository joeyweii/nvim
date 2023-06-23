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

    hi! link @include @repeat
    hi! link @preproc @repeat
    hi! link @define @repeat
    hi! link @keyword.operator @repeat
    hi! link @function.macro @repeat

    hi! link @constructor Function
    hi! link @function.call Function

    hi! link @parameter Variable
    hi! link @constant Variable
    hi! link @field Variable
    hi! link @property Variable
    hi! link @variable Variable
    hi! link @variable.builtin Variable
    hi! link @Identifier Variable
    hi! link @identifier Variable

    hi! link @namespace MoonflyOrchid
    hi! link @type.qualifier @namespace
    hi! link @storageclass @namespace
]])
