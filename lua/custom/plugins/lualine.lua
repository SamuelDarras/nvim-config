return {
    -- Set lualine as statusline
    'nvim-lualine/lualine.nvim',
    -- See `:help lualine.txt`
    requires = { 'nvim-tree/nvim-web-devicons', opt = true },
    dependencies = {
        'arkav/lualine-lsp-progress'
    },
    opts = {
        options = {
            icons_enabled = true,
            theme = 'everforest',
            component_separators = '',
            section_separators = { left = ' ', right = ' ' },
        },
        sections = {
            lualine_c = {
                {
                    'filename',
                    file_status = true,
                    symbols = {
                        modified = "󰧞",
                        readonly = ""
                    },
                },
            },
            lualine_y = {
                {
                    'lsp_progress',
                    icon = ' ',
                    display_components = { 'lsp_client', 'spinner',
                        { 'title', 'percentage', 'message' } },
                    spinner_symbols = { '󰔟', '󱦟', '󱦠', },
                },
                {
                    'datetime',
                    style = '%H:%M',
                },
            },
        }
    },
}
