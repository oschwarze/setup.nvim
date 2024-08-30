return {
  "epwalsh/obsidian.nvim",
  version = "*",
  lazy = true,
  event = {
    -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
    -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
    "BufReadPre  C:/Users/olisc/Dropbox/Obsidian/Main/**.md",
    "BufNewFile C:/Users/olisc/Dropbox/Obsidian/Main/**md",
  },
  dependencies = {
    -- Required.
    "nvim-lua/plenary.nvim",

    -- see below for full list of optional dependencies 👇
  },
  opts = {
    workspaces = {
      {
        name = "main",
        path = "~/Dropbox/Obsidian/Main",
      },
    },
    daily_notes = {
      -- Optional, if you keep daily notes in a separate directory.
      folder = "Personal/Journal",
      -- Optional, if you want to change the date format for the ID of daily notes.
      date_format = "%Y-%m-%d",
      -- Optional, if you want to change the date format of the default alias of daily notes.
      --alias_format = "%B %-d, %Y",
      -- Optional, if you want to automatically insert a template from your template directory like 'daily.md'
      template = "Journal Page.md"

    },

    -- Optional, for templates (see below).
    templates = {
      subdir = "Templates",
      date_format = "%Y-%m-%d",
      time_format = "%H:%M",
      -- A map for custom variables, the key should be the variable and the value a function
      substitutions = {}
    },
    prepend_note_path = false,
    prepend_note_id = true,
    new_notes_location = "current_dir",
    open_app_foreground = true,
    completion = {
        -- If using nvim-cmp, otherwise set to false
        nvim_cmp = true,
        -- Trigger completion at 2 chars
        min_chars = 3,
        -- Where to put new notes created from completion. Valid options are
        --  * "current_dir" - put new notes in same directory as the current buffer.
        --  * "notes_subdir" - put new notes in the default notes subdirectory.
        -- Whether to add the output of the node_id_func to new notes in autocompletion.
        -- E.g. "[[Foo" completes to "[[foo|Foo]]" assuming "foo" is the ID of the note.
        prepend_note_path = false,
        prepend_note_id = true
      },
     wiki_link_func = function(opts)
        if opts.id == nil then
          return string.format("[[%s]]", opts.label)
        elseif opts.label ~= opts.id then
          return string.format("[[%s|%s]]", opts.id, opts.label)
        else
          return string.format("[[%s]]", opts.id)
        end
      end,


        -- see below for full list of options 👇
    mappings = {
        -- Overrides the 'gf' mapping to work on markdown/wiki links within your vault.
        --[[ ["gf"] = {
          action = function()
            return require("obsidian").util.gf_passthrough()
          end,
          opts = { noremap = false, expr = true, buffer = true },
        },
        ]]
      },
  --finder = "telescope.nvim",

  -- Optional, determines whether to open notes in a horizontal split, a vertical split,
  -- or replacing the current buffer (default)
  -- Accepted values are "current", "hsplit" and "vsplit"
  open_notes_in = "hsplit",
  sort_by = "modified",
  sort_reversed = true,
  disable_frontmatter = false,


  
     -- Optional, customize how names/IDs for new notes are created.



  -- Optional, set to true if you don't want obsidian.nvim to manage frontmatter.

  -- Optional, alternatively you can customize the frontmatter data.



    note_id_func = function(title)
    -- Create note IDs in a Zettelkasten format with a timestamp and a suffix.
    -- In this case a note with the title 'My new note' will given an ID that looks
    -- like '1657296016-my-new-note', and therefore the file name '1657296016-my-new-note.md'
    local suffix = ""
    local log = require("obsidian.log")
    if title ~= nil then
      -- If title is given, transform it into valid file name.
       suffix = title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
    else
        log.err(title .. " : " .. suffix)
    end

    return suffix
  end,
  picker = {
    -- Set your preferred picker. Can be one of 'telescope.nvim', 'fzf-lua', or 'mini.pick'.
    name = "telescope.nvim",
    -- Optional, configure key mappings for the picker. These are the defaults.
    -- Not all pickers support all mappings.
    mappings = {
      -- Create a new note from your query.
      new = "<C-x>",
      -- Insert a link to the selected note.
      insert_link = "<C-l>",
    },
  },
  attachments = {
    -- The default folder to place images in via `:ObsidianPasteImg`.
    -- If this is a relative path it will be interpreted as relative to the vault root.
    -- You can always override this per image by passing a full path to the command instead of just a filename.
    img_folder = "Attachments",
    

    --This is the default
    img_text_func = function(client, path)
      local link_path
      local vault_relative_path = client:vault_relative_path(path)
      if vault_relative_path ~= nil then
        -- Use relative path if the image is saved in the vault dir.
        link_path = vault_relative_path
      else
        -- Otherwise use the absolute path.
        link_path = tostring(path)
      end
      local display_name = vim.fs.basename(link_path)
      return string.format("![%s](%s)", display_name, link_path)
    end,
  }


  },

  keys = {
    {"<leader>ov", ":ObsidianOpen ",mode="n",desc="open Obsidian MD"},
    {"<leader>oo", "<cmd>ObsidianQuickSwitch<CR>",mode="n",desc="Open Note"},
    {"<leader>oO", "<cmd>ObsidianSearch <CR>",mode="n",desc="Search Note"},
    {"<leader>ob", "<cmd>ObsidianBacklinks <CR>",mode="n",desc="View backlinks"},
    {"<leader>ob", "<esc>gv<cmd>'<,'>ObsidianBacklinks <CR>",mode="v",desc="View backlinks"},
    {"<leader>ol", "<esc>gv:'<,'>ObsidianLink ",mode="v",desc="Link to note (exisiting)"},
    {"<leader>oL", "<esc>gv:'<,'>ObsidianLinkNew ",mode="v",desc="Link to new note"},
    {"<leader>occ", ":'ObsidianCheck <CR>",mode="n",desc="Check Obsidian frontmatters"},
    {"<leader>on", ":ObsidianNew ",mode="n",desc="Make new Obsidian note"},
    {"<leader>oX", ":ObsidianExtractNote ",mode="v",desc="Extract selection"},
    {"<leader>op", ":ObsidianPasteImg ",mode="n",desc="Paste image from Clipboard"},

  },
 }
