return {
  {
    "tiesen243/vercel.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("vercel").setup({
        theme = "dark",        -- String: Sets the theme to light or dark (Default: light)
        transparent = false,   -- Boolean: Sets the background to transparent (Default: false)
        italics = {
          comments = true,   -- Boolean: Italicizes comments (Default: true)
          -- keywords = true,   -- Boolean: Italicizes keywords (Default: true)
          -- functions = true,  -- Boolean: Italicizes functions (Default: true)
          -- strings = true,    -- Boolean: Italicizes strings (Default: true)
          -- variables = true,  -- Boolean: Italicizes variables (Default: true)
          -- bufferline = false -- Boolean: Italicizes bufferline (Default: false)
        },
        overrides = {},        -- A dictionary of group names, can be a function returning a dictionary or a table.
      })

      -- This must be called before setting the colorscheme, otherwise it will always default to light mode
      vim.cmd.colorscheme("vercel")
    end,
  }
--     {
--         "nyoom-engineering/oxocarbon.nvim",
--         lazy = false,
--         priority = 1000,
--         config = function()
--             vim.opt.background = "dark"
--             vim.cmd.colorscheme "oxocarbon"
            
--             -- Override explorer folder color
--             vim.api.nvim_set_hl(0, "NvimTreeFolderName", { fg = "#f073ab" })
--             vim.api.nvim_set_hl(0, "NvimTreeFolderIcon", { fg = "#f073ab" })
--             vim.api.nvim_set_hl(0, "NeoTreeDirectoryName", { fg = "#f073ab" })
--             vim.api.nvim_set_hl(0, "NeoTreeDirectoryIcon", { fg = "#f073ab" })
--         end,
--     }
}