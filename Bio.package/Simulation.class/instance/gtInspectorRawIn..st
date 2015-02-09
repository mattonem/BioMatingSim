as yet unclassified
gtInspectorRawIn: composite
	
	^ (super gtInspectorRawIn: composite) act: [ self resetData. composite pane browser panes do: #update. ] icon: GLMUIThemeExtraIcons glamorousGrayCircleEmpty entitled: 'reset cache' ..