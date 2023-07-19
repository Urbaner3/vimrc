-- lspconfig
return {

    {
        "neovim/nvim-lspconfig", 
    },

    {
        "williamboman/nvim-lsp-installer", 
    },

    {
        "gpanders/editorconfig.nvim",
    },

    {
        "folke/which-key.nvim",
    },

    {
        "lewis6991/gitsigns.nvim",
        config = true,
    },

    {
        "numToStr/Comment.nvim",
        opts = {
            mappings = {
                extra = false,
            },
        },
    },

    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
    },

    {
        "ms-jpq/coq_nvim",
    },

    {
        "windwp/nvim-autopairs",
        opts = {
            check_ts = true,
        },
    },
}
