local Datetime = require("sttusline.component").new()

Datetime.set_config {
  style = "br",
}

Datetime.set_timing(true)

Datetime.set_update(function()
  local style = Datetime.get_config().style
  local fmt = style
  if style == "default" then
    fmt = "%H.%M"
  elseif style == "us" then
    fmt = "%m/%d/%Y"
  elseif style == "uk" then
    fmt = "%d/%m/%Y"
  elseif style == "iso" then
    fmt = "%Y-%m-%d"
  elseif style == "br" then
    fmt = "%d/%m/%y|%H:%M"
  end
  return os.date(fmt) .. ""
end)
require("sttusline").setup {
  statusline_color = "StatusLine",

  laststatus = 3,
  disabled = {
    filetypes = {
      "NvimTree",
      "lazy",
    },
    buftypes = {
      "terminal",
    },
  },
  components = {
    "mode",
    "filename",
    "git-branch",
    "git-diff",
    "%=",
    "diagnostics",
    "lsps-formatters",
    "copilot",
    Datetime
  },
}
