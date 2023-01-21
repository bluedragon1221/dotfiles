-- vim:foldmethod=marker

-- Colors {{{
local colors = {
    bg_storm = '#24283b',
    bg_night = '#1a1b26',

    fg_dark = '#565f89',
    fg_light = '#9aa5ce',

    normal = '#bb9af7', -- violet
    insert = '#7aa2f7', -- blue
    visual = '#9ece6a', -- green
    replace = '#f7768e', -- red
    } --}}}

-- Theme {{{
local bubbles_theme = {
    normal = {
        a = { fg = colors.bg_night, bg = colors.normal },
        b = { fg = colors.fg_dark, bg = none },
        c = { fg = colors.fg_light, bg = none },

        y = { fg = colors.fg_light, bg = colors.bg_storm }, 
    },

    insert = { a = { fg = colors.bg_night, bg = colors.insert } },
    visual = { a = { fg = colors.bg_night, bg = colors.visual } },
    replace = { a = { fg = colors.bg_night, bg = colors.replace } },
} --}}}

-- Setup {{{
require('lualine').setup {
    options = {
        theme = nord,
        component_separators = '|',
        disabled_filetypes = { 'netrw', 'shell', 'man' }
    },
    sections = {
        lualine_a = {
            { 'mode', separator = { left = '' }, right_padding = 0 },
        },
        lualine_b = { 'filename' },
        lualine_c = {},
        lualine_x = {},
        lualine_y = { 'location' },
        lualine_z = {
            { 'filetype', separator = { right = '' }, left_padding = 0 },
        },
    },
    tabline = {},
    extensions = {},
} --}}}
