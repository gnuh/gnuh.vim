return {
  "nvimdev/dashboard-nvim",
  event = "VimEnter",
  config = function()
    require("dashboard").setup({
      theme = "doom",
      config = {
        header = {
          "",
          "",
          "                                                                                              ",
          "     _/_/_/  _/      _/  _/    _/  _/    _/      _/      _/  _/      _/  _/_/_/  _/      _/   ",
          "  _/        _/_/    _/  _/    _/  _/    _/      _/_/    _/  _/      _/    _/    _/_/  _/_/    ",
          " _/  _/_/  _/  _/  _/  _/    _/  _/_/_/_/      _/  _/  _/  _/      _/    _/    _/  _/  _/     ",
          "_/    _/  _/    _/_/  _/    _/  _/    _/      _/    _/_/    _/  _/      _/    _/      _/      ",
          " _/_/_/  _/      _/    _/_/    _/    _/  _/  _/      _/      _/      _/_/_/  _/      _/       ",
          "                                                                                              ",
          "",
          "",
        },
        center = {
          {
            icon = '💰',
            icon_hl = 'group',
            desc = ' ',
            desc_hl = 'group',
            key = '!!',
            key_hl = 'group',
            key_format = ' [%s]', -- `%s` will be substituted with value of `key`
            action = '',
          },
        },
      },
    })
  end,
  dependencies = { 'nvim-tree/nvim-web-devicons' }
}
