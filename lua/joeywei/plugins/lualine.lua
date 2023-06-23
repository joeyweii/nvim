-- import lualine plugin safely
local lualine_status, lualine = pcall(require, "lualine")
if not lualine_status then
    print("lualine not found!")
    return
end

-- get lualine moonfly theme
local lualine_moonfly = require("lualine.themes.moonfly")

-- new colors for theme
local new_colors = {
    grey = "#CBCBC4",
    blue = "#65D1FF",
    green = "#3EFFDC",
    violet = "#FF61EF",
    yellow = "#FFDA7B",
    black = "#080808",
}

-- change moonfly theme colors
lualine_moonfly.normal = {
    a = {
        gui = "bold",
        bg = new_colors.grey,
        fg = new_colors.black, -- black
    },
}
lualine_moonfly.insert = {
    a = {
        gui = "bold",
        bg = new_colors.yellow,
        fg = new_colors.black, -- black

    },
}
lualine_moonfly.visual = {
    a = {
        gui = "bold",
        bg = new_colors.violet ,
        fg = new_colors.black, -- black
    },
}
lualine_moonfly.command = {
    a = {
        gui = "bold",
        bg = new_colors.green,
        fg = new_colors.black, -- black
    },
}

-- configure lualine with modified theme
lualine.setup({
    options = {
        theme = lualine_moonfly,
    },
})
