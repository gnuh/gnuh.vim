return {
  "CopilotC-Nvim/CopilotChat.nvim",
  dependencies = {
    { "github/copilot.vim" },                       -- or zbirenbaum/copilot.lua
    { "nvim-lua/plenary.nvim", branch = "master" }, -- for curl, log and async functions
  },
  build = "make tiktoken",                          -- Only on MacOS or Linux
  config = function()
    require("CopilotChat").setup {
      -- See Configuration section for options
      model = 'gpt-4o',
      agent = 'copilot',
      context = nil,
      temperature = 0.1,
      -- default window options
      window = {
        layout = 'vertical',    -- 'vertical', 'horizontal', 'float', 'replace'
        width = 0.5,            -- fractional width of parent, or absolute width in columns when > 1
        height = 0.5,           -- fractional height of parent, or absolute height in rows when > 1
        -- Options below only apply to floating windows
        relative = 'editor',    -- 'editor', 'win', 'cursor', 'mouse'
        border = 'rounded',     -- 'none', single', 'double', 'rounded', 'solid', 'shadow'
        row = nil,              -- row position of the window, default is centered
        col = nil,              -- column position of the window, default is centered
        title = 'Copilot Chat', -- title of chat window
        footer = nil,           -- footer of chat window
        zindex = 1,             -- determines if window is on top or below other floating windows
      },
      chat_autocomplete = true,
      prompts = {
        Explain = {
          prompt = '> /COPILOT_EXPLAIN\n\nWrite an explanation for the selected code as paragraphs of text.',
        },
        Review = {
          prompt = '> /COPILOT_REVIEW\n\nReview the selected code.',
          -- see config.lua for implementation
        },
        Fix = {
          prompt = '> /COPILOT_GENERATE\n\nThere is a problem in this code. Rewrite the code to show it with the bug fixed.',
        },
        Optimize = {
          prompt = '> /COPILOT_GENERATE\n\nOptimize the selected code to improve performance and readability.',
        },
        Docs = {
          prompt = '> /COPILOT_GENERATE\n\nPlease add documentation comments to the selected code.',
        },
        Tests = {
          prompt = '> /COPILOT_GENERATE\n\nPlease generate tests for my code.',
        },
        Commit = {
          prompt = '> #git:staged\n\nWrite commit message for the change with commitizen convention. Make sure the title has maximum 50 characters and message is wrapped at 72 characters. Wrap the whole message in code block with language gitcommit.',
        },
      },
    }
  end,
}
