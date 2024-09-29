return {
  { "NLKNguyen/papercolor-theme" },
  {
    "navarasu/onedark.nvim",
    config = function()
      require("onedark").setup({
        style = "darker",
      })
    end,
  },
  { "morhetz/gruvbox" },
  {
    "sainnhe/sonokai",
    config = function()
      vim.g.sonokai_style = "espresso"
      vim.g.sonokai_transparent_background = true
      vim.g.sonokai_enable_italic = true
    end,
  },

  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    opts = {
      window = { width = 27 },
    },
  },
  { "akinsho/bufferline.nvim", enabled = false },
  { "nvim-neo-tree/neo-tree.nvim", enabled = false },
  { "nvim-lualine/lualine.nvim", enabled = false },
  { "nvimdev/dashboard-nvim", enabled = false },
  { "folke/noice.nvim", enabled = false },
  { "folke/which-key.nvim", enabled = false },
  { "rcarriga/nvim-notify", enabled = false },
}
