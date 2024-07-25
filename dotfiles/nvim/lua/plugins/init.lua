return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

    {
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = {
                "lua-language-server", "bash-language-server", "stylua",
                "html-lsp", "java-language-server", "css-lsp" , "prettier"
            },
        },
    },

  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim", "lua", "vimdoc",
        "html", "css"
  		},
  	},
  },

    {
        "michaelrommel/nvim-silicon",
        lazy = true,
        cmd = "Silicon",
        config = function ()
            require("nvim-silicon").setup({
                font = "MesloLGS Nerd Font Mono=34;Noto Color Emoji=34",
                theme = "Dracula",
                background = "#6a5acd",
                window_title = function ()
                    return vim.fn.fnamemodify(
                        vim.api.nvim_buf_get_name(vim.api.nvim_get_current_buf()), ":t"
                    )
                end
            })
        end
    },
}
