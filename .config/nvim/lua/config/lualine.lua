local colors = {
  bg_normal  = '#0A7ACA',
  bg_insert  = '#C586C0',
  bg_visual  = '#6A9955',
  bg_replace = '#C72E0F',
  fg         = '#FDFFFF',
}

local vsc_theme = {
  normal = {
    a = { fg = colors.fg, bg = colors.bg_normal },
  },

  insert = { a = { fg = colors.fg, bg = colors.bg_insert } },
  visual = { a = { fg = colors.fg, bg = colors.bg_visual } },
  replace = { a = { fg = colors.black, bg = colors.bg_replace } },

  inactive = {
    a = { fg = colors.white, bg = colors.black },
    b = { fg = colors.white, bg = colors.black },
    c = { fg = colors.black, bg = colors.black },
  },
}

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = vsc_theme,
    component_separators = { left = '', right = '' },
    section_separators = { left = '', right = '' },
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = { 'branch', 'diagnostics' },
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = { 'location', 'shiftwidth', 'encoding', 'fileformat' },
    lualine_z = { 'filetype' },
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { 'filename' },
    lualine_x = { 'location' },
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
