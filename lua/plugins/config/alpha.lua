local alpha = require "alpha"
local header = {
"░██████╗░███╗░░██╗██╗░░░██╗░░░██╗░░░██╗██╗███╗░░░███╗",
"██╔════╝░████╗░██║██║░░░██║░░░██║░░░██║██║████╗░████║",
"██║░░██╗░██╔██╗██║██║░░░██║░░░╚██╗░██╔╝██║██╔████╔██║",
"██║░░╚██╗██║╚████║██║░░░██║░░░░╚████╔╝░██║██║╚██╔╝██║",
"╚██████╔╝██║░╚███║╚██████╔╝██╗░░╚██╔╝░░██║██║░╚═╝░██║",
"░╚═════╝░╚═╝░░╚══╝░╚═════╝░╚═╝░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝",
}

local dashboard = require "alpha.themes.dashboard"
dashboard.section.header.val = header
dashboard.section.buttons.val = {
dashboard.button("f", "☄  Find File", ":Telescope find_files<CR>"),
dashboard.button("r", "📂 Recent Files", ":Telescope oldfiles<CR>"),
dashboard.button("l", "🪠 Lazy", ":Lazy<CR>"),
dashboard.button("c", "⚙  Configuration", ":e $MYVIMRC<CR>"),
dashboard.button("u", "🔁 Update Plugins", ":Lazy update<CR>"),
dashboard.button("q", "🚫 Quit Neovim", ":qa!<CR>"),
}
local footer = function()
local version = " " .. vim.version().major .. "." .. vim.version().minor .. "." .. vim.version().patch
local lazy_ok, lazy = pcall(require, "lazy")
if lazy_ok then
local total_plugins = "   " .. lazy.stats().count .. " Plugins"
return version .. total_plugins
else
return version
end
end

dashboard.section.footer.val = footer()

dashboard.section.footer.opts.hl = "AlphaFooter"
dashboard.section.header.opts.hl = "AlphaHeader"
dashboard.section.buttons.opts.hl = "AlphaButton"

dashboard.opts.noautocmd = false
alpha.setup(dashboard.opts)
