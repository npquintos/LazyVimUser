-- since this is just an example spec, don't actually load anything here and return an empty spec
-- stylua: ignore
-- if true then return {} end

-- every spec file under the "plugins" directory will be loaded automatically by lazy.nvim
--
-- In your plugin files, you can:
-- * add extra plugins
-- * disable/enabled LazyVim plugins
-- * override the configuration of LazyVim plugins
return {
  {
    "nvim-neorg/neorg",
      build = ":Neorg sync-parsers",
      ft = "norg",
      lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
      version = "*", -- Pin Neorg to the latest stable release
      LocalLeader = ";",
      dependencies = { "nvim-lua/plenary.nvim" },
      event = "VeryLazy",
      opts = {
        load = {
          ["core.defaults"] = {
          }, -- Loads default behaviour
          ["core.concealer"] = {}, -- Adds pretty icons to your documents
          ["core.keybinds"] = {}, -- Adds default keybindings
          ["core.completion"] = {
            config = {
              engine = "nvim-cmp",
            },
          }, -- Enables support for completion plugins
          ["core.journal"] = {}, -- Enables support for the journal module
          ["core.dirman"] = { -- Manages Neorg workspaces
            config = {
              workspaces = {
                notes = "~/notes",
              },
              default_workspace = "notes",
            },
          },
        },
      },
  },
  -- disable trouble
  -- { "folke/trouble.nvim", enabled = false },
}
