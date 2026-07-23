return {
  "romus204/tree-sitter-manager.nvim",
  dependencies = {}, -- tree-sitter CLI must be installed system-wide
  config = function()
    require("tree-sitter-manager").setup({
      -- Default Options
      ensure_installed = {
        "bash",
        "c",
        "cpp",
        "go",
        "jsx",
        "tsx",
        "lua",
        "markdown",
        "python",
        "rust",
      },
      -- list of parsers to install at the start of a neovim session
      -- border = nil, -- border style for the window (e.g. "rounded", "single"), if nil, use the default border style defined by 'vim.o.winborder'. See :h 'winborder' for more info.
      -- auto_install = false, -- if enabled, install missing parsers when editing a new file
      -- highlight = true, -- treesitter highlighting is enabled by default
      -- languages = {}, -- override or add new parser sources
      -- parser_dir = vim.fn.stdpath("data") .. "/site/parser",
      -- query_dir = vim.fn.stdpath("data") .. "/site/queries",
    })

    -- For mdx until it has no tree-sitter
    -- Register the .mdx extension as its own filetype.
    vim.filetype.add({ extension = { mdx = "mdx" } })

    -- Tell Neovim's built-in treesitter that "mdx" buffers should be
    -- parsed and queried as "markdown". This is what makes the query
    -- files under after/queries/markdown/ apply to .mdx files too.
    vim.treesitter.language.register("markdown", "mdx")

    vim.api.nvim_create_autocmd("FileType", {
      pattern = "mdx",
      group = vim.api.nvim_create_augroup("mdx_support", { clear = true }),
      callback = function(args)
        vim.treesitter.start(args.buf, "markdown")
      end,
    })
  end,
}
