local options = {
  cursorline = {
    enable = false,
    timeout = 3000,
    number = true,
  },
  cursorword = {
    enable = true,
    min_length = 3,
    hl = { underline = true },
  },
}
return options
