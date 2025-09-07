return {
	{
		"rmagatti/auto-session",
		config = function()
			require("auto-session").setup({
				auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
				session_lens = {
					load_on_setup = true,
					theme_conf = { border = true },
					previewer = false,
					buftypes_to_ignore = {},
				}
			})
		end,
	},
}
