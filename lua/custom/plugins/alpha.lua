return {
    'goolord/alpha-nvim',
    config = function ()
        local alpha = require'alpha'
        local dashboard = require'alpha.themes.dashboard'
        local button = dashboard.button
        dashboard.section.buttons.val = {
          button("e", "  New file", "<cmd>ene <CR>"),
          button("f", "󰈞  Find file",":Telescope find_files <CR>" ),
          button("h", "󰊄  Recently opened files",":Telescope oldfiles <CR>"),
          button("r", "  Frecency/MRU"),
          button("g", "󰈬  Find word",":Telescope live_grep <CR>"),
          button("m", "  Jump to bookmarks"),
          button("l", "  Open last session","<cmd> lua require('persistence').load(last=true)<CR>"),
          button("s", "  Select previous session","<cmd> lua require('persistence').select()<CR>"),
          button("O", "󰮊 Obsidian Vault", ":Neotree float dir=C:/Users/olisc/Dropbox/Obsidian/Main reveal_force_cwd <CR>"),
         button("c", "  Configuration", ":Neotree float dir=C:/Users/olisc/AppData/Local/nvim reveal_force_cwd <CR>"),
        button("q", "  Quit Neovim", ":qa<CR>"),}
        alpha.setup(dashboard.opts)
    end
};
