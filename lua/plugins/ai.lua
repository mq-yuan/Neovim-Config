return {
    "Kurama622/llm.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "MunifTanjim/nui.nvim" },
    cmd = { "LLMSessionToggle", "LLMSelectedTextHandler", "LLMAppHandler" },
    config = function ()
        local tools = require("llm.tools")
        require("llm").setup({
            url = "https://aihubmix.com/v1/chat/completions",
            model = "gemini-2.0-flash",
            api_type = "openai",
            app_handler = {
                WordTranslate = {
                    handler = tools.flexi_handler,
                    prompt = "Translate the following text to Chinese, please only return the translation. <Need to translate text>:",
                    opts = {
                        model = "gemini-2.0-flash",
                        api_type = "openai",
                        exit_on_move = true,
                        enter_flexible_window = false,
                    },
                },
            }
        })
    end,
    specs = {
        {
            "AstroNvim/astrocore",
            opts = {
                mappings = {
                    n = {
                        ["<Leader>ac"] = { "<CMD>LLMSessionToggle<CR>", desc = "Toggle LLM.nvim session" },
                        ["<Leader>at"] = { "<CMD>LLMAppHandler Translate<CR>", desc = "Toggle LLM.nvim Translate session" },
                    },
                    x = {
                        ["<Leader>tc"] = { "<CMD>LLMAppHandler TestCode<CR>", desc = "Generate test code based your selected code by LLM.nvim" },
                        ["<Leader>ts"] = { "<CMD>LLMAppHandler WordTranslate<CR>", desc = "Translate visual region by LLM.nvim" },
                    },
                    v = {
                        ["<Leader>ae"] = { "<CMD>LLMAppHandler CodeExplain<CR>", desc = "Explain visual selected code by LLM.nvim" },
                    },
                },
            },
        }
    }
}
