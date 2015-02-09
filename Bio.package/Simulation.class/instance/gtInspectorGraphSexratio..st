as yet unclassified
gtInspectorGraphSexratio: composite
	<gtInspectorPresentationOrder: 40>
	^ composite morph
		title: 'SexRatio';
		display: [ 
					| b ds |
					self atTime: self duration.
					b := RTGrapherBuilder new.
					b extent: 600 @ 300.
					ds := RTStackedDataSet new.
					ds interaction popup text: #sexRatio.
					ds dotShape ellipse size: 5; color: (Color red alpha: 0.5).
					ds points: self timeLine.
					
					ds connectColor: Color lightGray.
					ds y: #sexRatio.
					b add: ds.
					b build.
					b view canvas buildMorph ];
		act: [ composite update. ] icon: GLMUIThemeExtraIcons glamorousGrayCircleEmpty entitled: 'redraw' .