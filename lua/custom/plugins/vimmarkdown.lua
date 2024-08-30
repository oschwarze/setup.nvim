return {
"masukomi/vim-markdown-folding",
    config = function()
        vim.g.markdown_fold_override_foldtex = 0 -- show the title of the headser when folds are closed 
        vim.g.markdown_fold_style = "stacked" --Show all headers on contraction and ot just the ones at the current foldlevel
    end
}
