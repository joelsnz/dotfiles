-- Distraction-free writing modes --
return {
	"pocco81/true-zen.nvim", 
	config = function()
		opts = ({
			modes = {
				ataraxis = {
					padding = {
						left = 30,
						right = 30,
					},
				},
			},
			integrations = {
				lualine = true,
			},
		})
	end,
}
