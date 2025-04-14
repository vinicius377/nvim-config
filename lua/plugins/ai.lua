return {
  {
    "Exafunction/codeium.nvim",
    cond = true,
    requires = {
      "nvim-lua/plenary.nvim",
      "hrsh7th/nvim-cmp",
    },
    config = function()
      require("codeium").setup({
        virtual_text = {
          enabled = true,
        }
      })
    end
  },
  {
    "olimorris/codecompanion.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      local openAIApiKey = os.getenv("OPENAI_API_KEY")
      local geminiApiToken = os.getenv("GEMINI_API_TOKEN")

      require("codecompanion").setup({
        adapters = {
          openai = function()
            return require("codecompanion.adapters").extend("openai", {
              env = {
                api_key = openAIApiKey
              }
            })
          end,
          gemini = function()
            return require("codecompanion.adapters").extend("gemini", {
              env = {
                api_token = geminiApiToken
              }
            })
          end
        },
        strategies = {
          chat = {
            adapter = "gemini"
          }
        }
      })
    end

  }
}
