require'nvim-treesitter.configs'.setup {
    ensure_installed = { "help", "bash", "go", "lua", "c", "javascript", "json", "python", "typescript", "tsx", "css", "rust", "java", "yaml", "markdown", "markdown_inline" }, -- one of "all" or a list of languages

    -- Install parsers synchronously (only applied to `ensure_installed`)
    sync_install = false,

    -- Automatically install missing parsers when entering buffer
    -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
    auto_install = true,

    ignore_install = { "phpdoc" }, -- List of parsers to ignore installing

    highlight = {
        enable = true, -- false will disable the whole extension
        disable = { "css" }, -- list of language that will be disabled

        -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
        -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
        -- Using this option may slow down your editor, and you may see some duplicate highlights.
        -- Instead of true it can also be a list of languages
        additional_vim_regex_highlighting = false,
    },

    autopairs = {
        enable = true,
    },

    indent = { enable = true, disable = { "python", "css" } },
}
