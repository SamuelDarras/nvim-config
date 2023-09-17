return {
    -- Set lualine as statusline
    'nvim-lualine/lualine.nvim',
    -- See `:help lualine.txt`
    requires = { 'nvim-tree/nvim-web-devicons', opt = true },
    opts = {
        options = {
            icons_enabled = true,
            theme = 'everforest',
            component_separators = '',
            section_separators = { left = '', right = ' ' },
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
                {
                    'buffers',
                    show_modified_status = false,
                },
            },
            lualine_y = {
                {
                    function()
                        local msg = "No LSP"
                        local buf_ft = vim.api.nvim_buf_get_option(0, 'filetype')
                        local clients = vim.lsp.get_active_clients()

                        if next(clients) == nil then
                            return msg
                        end

                        for _, client in ipairs(clients) do
                            local ft = client.config.filetypes
                            if ft and vim.fn.index(ft, buf_ft) ~= -1 then
                                return client.name
                            end
                        end

                        return msg
                    end,
                    icon = ' ',
                },
                {
                    'datetime',
                    style = '%H:%M',
                },
            },
        }
    },
}
