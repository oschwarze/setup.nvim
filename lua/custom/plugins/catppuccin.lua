return {
require("catppuccin").setup({
    flavour = "latte", -- latte, frappe, macchiato, mocha
    background = { -- :h background
        light = "latte",
        dark = "mocha",
    },
    transparent_background = true, -- disables setting the background color.
    show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
    term_colors = true, -- sets terminal colors (e.g. `g:terminal_color_0`)
    dim_inactive = {
        enabled = false, -- dims the background color of inactive window
        shade = "dark",
        percentage = 0.15, -- percentage of the shade to apply to the inactive window
    },
    no_italic = false, -- Force no italic
    no_bold = false, -- Force no bold
    no_underline = false, -- Force no underline
    styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
        comments = { "italic" }, -- Change the style of comments
        conditionals = { "italic" },
        loops = {},
        functions = {"bold"},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
        -- miscs = {}, -- Uncomment to turn off hard-coded styles
    },
    color_overrides = {
            latte = {
                rosewater = "#cc7983",
                flamingo = "#bb5d60",
                pink = "#d54597",
                mauve = "#a65fd5",
                red = "#b7242f",
                maroon = "#db3e68",
                peach = "#e46f2a",
                yellow = "#bc8705",
                green = "#1a8e32",
                teal = "#00a390",
                sky = "#089ec0",
                sapphire = "#0ea0a0",
                blue = "#017bca",
                lavender = "#8584f7",
                text = "#444444",
                subtext1 = "#555555",
                subtext0 = "#666666",
                overlay2 = "#777777",
                overlay1 = "#888888",
                overlay0 = "#999999",
                surface2 = "#aaaaaa",
                surface1 = "#bbbbbb",
                surface0 = "#cccccc",
                base = "#ffffff",
                mantle = "#eeeeee",
                crust = "#dddddd",
            },
            mocha = {
                rosewater = "#ffc0b9",
                flamingo = "#f5aba3",
                pink = "#f592d6",
                mauve = "#c0afff",
                red = "#ea746c",
                maroon = "#ff8595",
                peach = "#fa9a6d",
                yellow = "#ffe081",
                green = "#99d783",
                teal = "#47deb4",
                sky = "#00d5ed",
                sapphire = "#00dfce",
                blue = "#00baee",
                lavender = "#abbff3",
                text = "#cccccc",
                subtext1 = "#bbbbbb",
                subtext0 = "#aaaaaa",
                overlay2 = "#999999",
                overlay1 = "#888888",
                overlay0 = "#777777",
                surface2 = "#666666",
                surface1 = "#555555",
                surface0 = "#444444",
                base = "#202020",
                mantle = "#222222",
                crust = "#333333",
            },
        },
    custom_highlights = {},
    integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        alpha = true,
        markdown = true,
        mason = true,
        which_key = true,
        notify = false,
        mini = {
            enabled = true,
            indentscope_color = "",
        },
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
    },
}),
}
