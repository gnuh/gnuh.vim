local options = {
  ensure_installed = {
    "c",
    "make",
    "cmake",
    "php",
    "lua",
    "vim",
    "help",
    "typescript",
    "cpp",
    "dockerfile",
    "html",
    "javascript",
    "json",
    "markdown",
    "markdown_inline",
    "tsx",
  },
  sync_install = true,
  auto_install = true,
  ignore_install = { "help" },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  disable = function(lang, buf)
    local max_filesize = 100 * 1024 -- 100 KB
    local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
    if ok and stats and stats.size > max_filesize then
      return true
    end
  end,
  autotag = { enable = true },
}
