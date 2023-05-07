vim.g.material_style = "darker"
require('material').setup({
	disable_background = true,
	plugins = {
		"telescope"
	}
})

function ColorMyPencils(color) 
	color = color or "material"
	vim.cmd.colorscheme(color)

end

ColorMyPencils()
