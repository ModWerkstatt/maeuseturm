function data()

return { 
	constructionType = "ASSET_DEFAULT",
	description = { 
		name = _("maeuseturm_asset"),			
		description = _("maeuseturm_asset_desc"),
		icon = "icons/assets_maeuseturm_icon_small@2x.tga",
		previewIcon = "icons/assets_maeuseturm_preview@2x.tga",
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
			name = _("maeuseturm_menu"),
			uiType = "IconButton",
			values = { "icons/mauseturm_alt_icon20@2x.tga", "icons/mauseturm_medium_icon20@2x.tga", "icons/mauseturm_modern_icon20@2x.tga", },
			tooltip = _("tooltip_maeuseturm"),
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
