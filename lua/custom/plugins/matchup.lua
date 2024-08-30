return {
    "andymass/vim-matchup",
    lazy = false,
    init = function ()
        vim.g.matchup_mathparen_offscreen = {method = "popup"}
        vim.g.matchup_matchparen_defered = 1 -- Wait i bit before highlighting to improve movements
        vim.g.matchup_matchparen_defered_show_delay = 500 -- default : 50
        vim.g.matchup_matchparen_defered_hide_delay = 7000 -- default : 700
        vim.g.matchup_override_vimtex=1
    end
}
