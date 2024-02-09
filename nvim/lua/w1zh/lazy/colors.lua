function ColorMyPencils(color)
	color = color or "kanagawa"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

end

return {
    {
        "rebelot/kanagawa.nvim",
        config = function()
            require("kanagawa").setup({})
        end
    },

    {
        "rebelot/kanagawa.nvim",
        name = "kanagawa",
        config = function()
            require('kanagawa').setup({
                disable_background = true,
            })

            vim.cmd("colorscheme kanagawa")

            ColorMyPencils()
        end
    },


}
