local which_key = require "which-key"

local setup = {
  plugins = {
    marks = true,       -- shows a list of your marks on ' and `
    registers = true,   -- shows your registers on " in NORMAL or <C-r> in INSERT mode
    spelling = {
      enabled = true,   -- enabling this will show WhichKey when pressing z= to select spelling suggestions
      suggestions = 20, -- how many suggestions should be shown in the list?
    },
    presets = {
      operators = false,   -- adds help for operators like d, y, ... and registers them for motion / text object completion
      motions = true,      -- adds help for motions
      text_objects = true, -- help for text objects triggered after entering an operator
      windows = true,      -- default bindings on <c-w>
      nav = true,          -- misc bindings to work with windows
      z = true,            -- bindings for folds, spelling and others prefixed with z
      g = false,           -- bindings for prefixed with g
    },
  },
  key_labels = {},
  icons = {
    breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
    separator = "➜", -- symbol used between a key and it's label
    group = "+", -- symbol prepended to a group
  },
  popup_mappings = {
    scroll_down = "<c-d>", -- binding to scroll down inside the popup
    scroll_up = "<c-u>",   -- binding to scroll up inside the popup
  },
  window = {
    border = "rounded",       -- none, single, double, shadow
    position = "bottom",      -- bottom, top
    margin = { 1, 0, 1, 0 },  -- extra window margin [top, right, bottom, left]
    padding = { 2, 0, 2, 0 }, -- extra window padding [top, right, bottom, left]
    winblend = 0,
  },
  layout = {
    height = { min = 4, max = 25 }, -- min and max height of the columns
    width = { min = 20, max = 50 }, -- min and max width of the columns
    spacing = 3,                    -- spacing between columns
    align = "left",                 -- align columns left, center or right
  },
  ignore_missing = true,            -- enable this to hide mappings for which you didn't specify a label
  hidden = {
    "<silent>",
    ":",
    "<Cmd>",
    "<cr>",
    "call",
    "lua",
    "^:",
    "^ ",
  },                 -- hide mapping boilerplate
  show_help = true,  -- show help message on the command line when the popup is visible
  triggers = "auto", -- automatically setup triggers
  triggers_blacklist = { i = { "j", "k" }, v = { "j", "k" } },
}

local opts = {
  mode = "n",     -- NORMAL mode
  prefix = "<leader>",
  buffer = nil,   -- Global mappings. Specify a buffer number for buffer local mappings
  silent = true,  -- use `silent` when creating keymaps
  noremap = true, -- use `noremap` when creating keymaps
  nowait = true,  -- use `nowait` when creating keymaps
}

local function toggleAlpha()
  if vim.bo.buftype == "" or vim.bo.filetype == "alpha" or vim.bo.filetype == "checkhealth" then
    vim.cmd ":Alpha"
  end
end

local mappings = {
  ["a"] = { toggleAlpha, "Alpha" },
  ["y"] = { ":%y+<cr>", "Yank All Text" },
  -- ["e"] = { ":NvimTreeToggle<cr>", "Explorer" },
  ["q"] = { ":qa!<cr>", "Quit" },
  ["c"] = { ":Bdelete this<cr>", "Delete Buffer" },
  C = {
    name = "Buffers",
    c = { ":Bdelete other<cr>", "All except this" },
    a = { ":Bdelete all<cr>", "All" },
  },
  ["f"] = {
    ":lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown{previewer = false})<cr>",
    "Find files",
  },
  ["h"] = { ":lua require'hop'.hint_words()<cr>", "Hop" },
  ["F"] = { ":Telescope live_grep theme=get_dropdown<cr>", "Find Text" },
  p = {
    name = "Plugin",
    c = { ":Lazy clean<cr>", "Clean" },
    C = { ":Lazy check<cr>", "Check" },
    d = { ":Lazy debug<cr>", "Debug" },
    i = { ":Lazy install<cr>", "Install" },
    s = { ":Lazy sync<cr>", "Sync" },
    l = { ":Lazy log<cr>", "Log" },
    h = { ":Lazy home<cr>", "Home" },
    H = { ":Lazy help<cr>", "Help" },
    p = { ":Lazy profile<cr>", "Profile" },
    u = { ":Lazy update<cr>", "Update" },
  },
  n = {
    name = "Neovim",
    r = { ":Reload<cr>", "Core Reload " },
    c = { ":e $MYVIMRC<cr>", "Configuration" },
    s = { ":StartupTime<cr>", "StartupTime" },
    i = { ":Inspect<cr>", "Inspect" }, -- only available on neovim 0.9
    u = { ":Update<cr>", "Update" },
    h = { ":checkhealth<cr>", "Health" },
    v = { ":version<cr>", "Version" },
  },
  g = {
    name = "Git",
    g = { ":LazyGit<cr>", "Lazygit" },
    j = { ":lua require 'gitsigns'.next_hunk()<cr>", "Next Hunk" },
    k = { ":lua require 'gitsigns'.prev_hunk()<cr>", "Prev Hunk" },
    l = { ":lua require 'gitsigns'.blame_line()<cr>", "Blame" },
    p = {
      ":lua require 'gitsigns'.preview_hunk()<cr>",
      "Preview Hunk",
    },
    r = { ":lua require 'gitsigns'.reset_hunk()<cr>", "Reset Hunk" },
    R = {
      ":lua require 'gitsigns'.reset_buffer()<cr>",
      "Reset Buffer",
    },
    s = { ":lua require 'gitsigns'.stage_hunk()<cr>", "Stage Hunk" },
    u = {
      ":lua require 'gitsigns'.undo_stage_hunk()<cr>",
      "Undo Stage Hunk",
    },
    o = { ":Telescope git_status<cr>", "Open changed file" },
    b = { ":Telescope git_branches<cr>", "Checkout branch" },
    c = { ":Telescope git_commits<cr>", "Checkout commit" },
    d = { ":Gitsigns diffthis HEAD<cr>", "Diff" },
  },
  l = {
    name = "LSP",
    f = { ":lua vim.lsp.buf.format()<cr>", "Format" },
    a = { ":Lspsaga code_action<cr>", "Code Action" },
    h = { ":lua vim.lsp.buf.signature_help()<cr>", "Signature Help" },
    i = { ":LspInfo<cr>", "Info" },
    o = { ":Lspsaga outline<cr>", "Code Outline" },
    I = { ":Lspsaga incoming_calls<cr>", "Incoming Calls" },
    O = { ":Lspsaga outgoing_calls<cr>", "Outgoing Calls" },
    m = { ":Mason<cr>", "Mason Installer" },
    j = { ":Lspsaga diagnostic_jump_next<cr>", "Next Diagnostic" },
    k = { ":Lspsaga diagnostic_jump_prev<cr>", "Prev Diagnostic" },
    d = {
      ":Telescope diagnostics bufnr=0<cr>",
      "Document Diagnostics",
    },
    w = { ":Telescope diagnostics<cr>", "Workspace Diagnostics" },
    s = { ":Telescope lsp_document_symbols<cr>", "Document Symbols" },
    S = {
      ":Telescope lsp_workspace_symbols<cr>",
      "Workspace Symbols",
    },
    c = {
      ":lua require('copilot.suggestion').toggle_auto_trigger()<cr>",
      "Copilot Toggle",
    },
    C = {
      name = "ChatGPT",
      c = { "<cmd>ChatGPT<CR>", "ChatGPT" },
      e = {
        "<cmd>ChatGPTEditWithInstruction<CR>",
        "Edit with instruction",
        mode = { "n", "v" },
      },
      g = {
        "<cmd>ChatGPTRun grammar_correction<CR>",
        "Grammar Correction",
        mode = { "n", "v" },
      },
      t = {
        "<cmd>ChatGPTRun translate<CR>",
        "Translate",
        mode = { "n", "v" },
      },
      k = {
        "<cmd>ChatGPTRun keywords<CR>",
        "Keywords",
        mode = { "n", "v" },
      },
      d = {
        "<cmd>ChatGPTRun docstring<CR>",
        "Docstring",
        mode = { "n", "v" },
      },
      a = {
        "<cmd>ChatGPTRun add_tests<CR>",
        "Add Tests",
        mode = { "n", "v" },
      },
      o = {
        "<cmd>ChatGPTRun optimize_code<CR>",
        "Optimize Code",
        mode = { "n", "v" },
      },
      s = {
        "<cmd>ChatGPTRun summarize<CR>",
        "Summarize",
        mode = { "n", "v" },
      },
      f = {
        "<cmd>ChatGPTRun fix_bugs<CR>",
        "Fix Bugs",
        mode = { "n", "v" },
      },
      x = {
        "<cmd>ChatGPTRun explain_code<CR>",
        "Explain Code",
        mode = { "n", "v" },
      },
      r = {
        "<cmd>ChatGPTRun roxygen_edit<CR>",
        "Roxygen Edit",
        mode = { "n", "v" },
      },
      l = {
        "<cmd>ChatGPTRun code_readability_analysis<CR>",
        "Code Readability Analysis",
        mode = { "n", "v" },
      },
    },
  },
  d = {
    name = "Dap",
    c = { ":lua require'dap'.continue()<cr>", "Continue" },
    o = { ":lua require'dap'.step_over()<cr>", "Step Over" },
    i = { ":lua require'dap'.step_into()<cr>", "Step Into" },
    u = { ":lua require'dap'.step_out()<cr>", "Step Out" },
    b = { ":lua require'dap'.toggle_breakpoint()<cr>", "Breakpoint" },
    d = { ":lua require'dapui'.toggle()<cr>", "Dap UI" },
    L = {
      name = "Lua",
      r = { ":lua require'osv'.run_this()<cr>", "Run This" },
      l = {
        ":lua require'osv'.launch({port = 8086})<cr>",
        "Lua Launcher",
      },
    },
  },
  s = {
    name = "Search",
    a = { ":Telescope autocommands<cr>", "Autocommmands" },
    b = { ":Telescope git_branches<cr>", "Checkout branch" },
    c = { ":Telescope colorscheme<cr>", "Colorscheme" },
    h = { ":Telescope help_tags<cr>", "Find Help" },
    k = { ":Telescope keymaps<cr>", "Keymaps" },
    C = { ":Telescope commands<cr>", "Commands" },
    r = { ":Telescope oldfiles<cr>", "Recent File" },
    H = { ":Telescope highlights<cr>", "Highlights" },
  },
  t = {
    name = "Terminal",
    f = { ":ToggleTerm direction=float<cr>", "Float" },
    h = {
      ":ToggleTerm size=10 direction=horizontal<cr>",
      "Horizontal",
    },
    v = { ":ToggleTerm size=50 direction=vertical<cr>", "Vertical" },
  },
  O = {
    name = "Octo",
    p = { "<cmd>Octo pr list<cr>", "PR List" },
    P = {
      name = "Pull Request",
      d = { "<cmd>Octo pr diff<cr>", "Diff" },
      c = { "<cmd>Octo pr commits<cr>", "Commits" },
      C = { "<cmd>Octo pr changes<cr>", "Changes" },
      e = { "<cmd>Octo pr check<cr>", "Check" },
      r = { "<cmd>Octo pr reload<cr>", "Reload" },
    },
    r = {
      name = "Review",
      s = { "<cmd>Octo review start<cr>", "Start Review" },
      c = { "<cmd>Octo review create<cr>", "Create Review" },
      r = { "<cmd>Octo review resume<cr>", "Resume Review" },
      S = { "<cmd>Octo review submit<cr>", "Submit Review" },
    },
    R = {
      name = "Reaction",
      y = { "<cmd>Octo reaction thumbs_up<cr>", "👍" },
      p = { "<cmd>Octo reaction +1<cr>", "+1" },
      r = { "<cmd>Octo reaction rocket<cr>", "🚀" },
      P = { "<cmd>Octo reaction party<cr>", "🥳" },
    },
    c = {
      name = "Comments",
      c = { "<cmd>Octo comment add", "Add Comment" },
      d = { "<cmd>Octo comment delete", "Delete to Comment" },
    },
    i = {
      name = "Issues",
      l = { "<cmd>Octo issue list<cr>", "List Issues" },
      c = { "<cmd>Octo issue create<cr>", "Create Issue" },
    },
  },
  j = {
    name = "Jester",
    r = { ":lua require'jester'.run()<cr>", "Run" },
    R = {
      ":lua require'jester'.run({repeatable = true})<cr>",
      "Run Repeatable",
    },
    f = { ":lua require'jester'.run_file()<cr>", "Run File" },
    s = { ":lua require'jester'.stop()<cr>", "Stop" },
    l = {
      name = "Log",
      l = { ":lua require'jester'.log()<cr>", "Log" },
      L = {
        ":lua require'jester'.log({clear = true})<cr>",
        "Log Clear",
      },
    },
    d = {
      name = "Debug",
      d = { ":lua require'jester'.debug()<cr>", "Debug" },
      D = {
        ":lua require'jester'.debug({clear = true})<cr>",
        "Debug Clear",
      },
      f = { ":lua require'jester'.debug_file()<cr>", "Debug File" },
    },
    t = {
      name = "Trace",
      t = { ":lua require'jester'.trace()<cr>", "Trace" },
      T = {
        ":lua require'jester'.trace({clear = true})<cr>",
        "Trace Clear",
      },
    },
  },
  S = {
    name = "Saga",
    o = { ":Lspsaga outline<cr>", "Outline" },
    a = { ":Lspsaga code_action<cr>", "Code Action" },
    A = {
      name = "PHP Code Action",
      a = { ":GetAllClasses<cr>", "All Classes" },
      c = { ":GetClass<cr>", "Get Classes" },
      s = { ":SortClass<cr>", "Sort Classes" },
    },
    f = { ":Lspsaga lsp_finder<cr>", "LSP Finder" },
    h = { ":Lspsaga hover_doc<cr>", "Hover Doc" },
    p = { ":Lspsaga preview_definition<cr>", "Preview Definition" },
    r = { ":Lspsaga rename<cr>", "Rename" },
    s = { ":Lspsaga signature_help<cr>", "Signature Help" },
    t = { ":Lspsaga open_floaterm<cr>", "Open Floaterm" },
    T = { ":Lspsaga close_floaterm<cr>", "Close Floaterm" },
    l = {
      ":Lspsaga show_line_diagnostics<cr>",
      "Show Line Diagnostics",
    },
    L = {
      ":Lspsaga show_cursor_diagnostics<cr>",
      "Show Cursor Diagnostics",
    },
    b = {
      ":Lspsaga show_buf_diagnostics<cr>",
      "Show Buffer Diagnostics",
    },
    c = {
      name = "Call Hierarchy",
      i = { ":Lspsaga lsp_finder<cr>", "Incoming Calls" },
      o = { ":Lspsaga lsp_finder<cr>", "Outgoing Calls" },
    },
  },
  w = { ":Weather<cr>", "Weather" },
  N = {
    name = "NeoTest",
    r = { ":lua require('neotest').run.run()<cr>", "Run" },
    f = {
      ":lua require('neotest').run.run(vim.fn.expand('%'))<cr>",
      "Run File",
    },
    s = { ":lua require('neotest').run.stop()<cr>", "Stop" },
  },
  r = {
    name = "Actions",
    r = { ":lua require('ssr').open()<CR>", "Rename" },
    R = {
      ":lua require('refactoring').select_refactor()<CR>",
      "Refactor",
    },
  },
  u = {
    name = "Url View",
    u = { ":UrlView<cr>", "View Buffer URLs" },
    f = { ":UrlView file<cr>", "Open file URLs" },
    l = { ":UrlView lazy<cr>", "Open lazy URLs" },
  },
  z = { ":ZenMode<cr>", "Zen Mode" },
}

which_key.setup(setup)
which_key.register(mappings, opts)
