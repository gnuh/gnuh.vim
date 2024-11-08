local lspkind = require('lspkind')
local cmp = require "cmp"
local luasnip = require "luasnip"
local tailwindcss_colorizer_cmp = require("tailwindcss-colorizer-cmp")

require("luasnip.loaders.from_snipmate").lazy_load {
  paths = vim.fn.stdpath "config" .. "/snippets/snipmate",
}
require("luasnip.loaders.from_vscode").lazy_load()

local kind_icons = {
  Text = "",
  Method = "",
  Function = "",
  Constructor = "",
  Field = "ﰠ",
  Variable = "",
  Class = "ﴯ",
  Interface = "",
  Module = "",
  Property = "ﰠ",
  Unit = "塞",
  Value = "",
  Enum = "",
  Keyword = "",
  Snippet = "",
  Color = "",
  File = "",
  Reference = "",
  Folder = "",
  EnumMember = "",
  Constant = "",
  Struct = "פּ",
  Event = "",
  Operator = "",
  TypeParameter = "",
}

local has_words_before = function()
  if vim.api.nvim_buf_get_option(0, "buftype") == "prompt" then
    return false
  end
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_text(0, line - 1, 0, line - 1, col, {})[1]:match "^%s*$" == nil
end

local custom_formatter = function(entry, vim_item)
  vim_item = lspkind.cmp_format({
    mode = 'symbol',
    maxwidth = 50,
    ellipsis_char = '...',
    show_labelDetails = true,
    before = function(entry, vim_item)
      return vim_item
    end
  })(entry, vim_item)
  vim_item = tailwindcss_colorizer_cmp.formatter(entry, vim_item)
  return vim_item
end

cmp.setup {
  formatting = {
    format = custom_formatter,
  },
  enabled = function()
    return vim.api.nvim_buf_get_option(0, "buftype") ~= "prompt"
  end,
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body) -- For `luasnip` users.
    end,
  },
  sorting = {
    priority_weight = 2,
    comparators = {

      -- Below is the default comparitor list and order for nvim-cmp
      cmp.config.compare.offset,
      -- cmp.config.compare.scopes, --this is commented in nvim-cmp too
      cmp.config.compare.exact,
      cmp.config.compare.score,
      cmp.config.compare.recently_used,
      cmp.config.compare.locality,
      cmp.config.compare.kind,
      cmp.config.compare.sort_text,
      cmp.config.compare.length,
      cmp.config.compare.order,
    },
  },
  mapping = cmp.mapping.preset.insert {
    ["<C-k>"] = cmp.mapping.select_prev_item(),
    ["<C-j>"] = cmp.mapping.select_next_item(),
    ["<C-b>"] = cmp.mapping(cmp.mapping.scroll_docs(-1)),
    ["<C-f>"] = cmp.mapping(cmp.mapping.scroll_docs(1)),
    ["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
    ["<C-e>"] = cmp.mapping {
      i = cmp.mapping.abort(),
      c = cmp.mapping.close(),
    },
    ["<CR>"] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Insert,
      select = false,
    },
    ["<Tab>"] = vim.schedule_wrap(function(fallback)
      if cmp.visible() and has_words_before() then
        cmp.select_next_item { behavior = cmp.SelectBehavior.Select }
      else
        fallback()
      end
    end),
    ["<S-Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item { behavior = cmp.SelectBehavior.Select }
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, {
      "i",
      "s",
    }),
  },
  sources = cmp.config.sources {
    { name = "copilot" },
    { name = "orgmode" },
    { name = "tailwindcss" },
    { name = "nvim_lsp" },
    { name = "nvim_lua" },
    -- {
    --   name = "buffer",
    --   option = { keyword_pattern = [[\k\+]] },
    --   group_index = 4,
    -- },
    -- { name = "buffer-lines", group_index = 4 },
  },
  confirm_opts = {
    behavior = cmp.ConfirmBehavior.Insert,
    select = false,
  },
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
  experimental = {
    ghost_text = false,
  },
}
cmp.setup.filetype("gitcommit", {
  sources = cmp.config.sources({
    { name = "git" }, -- You can specify the `cmp_git` source if you were installed it.
  }, {
    { name = "buffer" },
  }),
})

cmp.setup.cmdline(":", {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = "cmdline" },
  },
  window = {
    completion = cmp.config.window.bordered {
      border = "rounded",
      winhighlight = "Normal:Normal,FloatBorder:CmpCompletionBorder,CursorLine:CmpCursorLine,Search:Search",
      col_offset = -3,
      side_padding = 1,
    },
  },
  formatting = {
    -- fields = { 'abbr' },
    format = function(_, vim_item)
      vim_item.kind = string.format("%s %s", kind_icons[vim_item.kind], vim_item.kind)
      return vim_item
    end,
  },
})
