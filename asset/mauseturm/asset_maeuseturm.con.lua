function data()

return { 
	constructionType = "ASSET_TRACK",
	description = { 
		name = _("FS E636 locomotives "),			
		description = _("E636 locomotives be used as asset"),
		icon = "icons/raptorark_menu_fs_e636_smallIcon@2x.tga",
		previewIcon = "",
	},
	menuCategory = {
		categories = {
			{
				category = "landscaping_assets",
				order = 5000,
			},
		},
	},
	buildMode = "MULTI",
	skipCollision = true,
	autoRemovable = false,
	  snapping = { 
		rail = false, 
		road = false, 
		water = false 
	  },
	order = 1,
	params = {
		{
			key = "maeuseturm",
			name = _("maeuseturm_asset"),
			uiType = "IconButton",
			values = { "icons/mauseturm_alt_icon20@2x.tga", "icons/mauseturm_medium_icon20@2x.tga", "icons/mauseturm_modern_icon20@2x.tga", },
			tooltip = _("tooltip_assets"),
			defaultIndex = 1,
		},
	},
	updateScript = {
		fileName = "asset_maeuseturm.script@updateFn",
		params = {
		}
	}
}

end
