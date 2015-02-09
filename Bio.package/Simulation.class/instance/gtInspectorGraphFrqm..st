as yet unclassified
gtInspectorGraphFrqm: composite
	<gtInspectorPresentationOrder: 40>
	^ composite morph
		title: 'FreqmRatio';
		display: [ 
					| b ds |
					self atTime: self duration.
					b := RTGrapher new.
					b extent: 600 @ 300.
					ds := RTStackedDataSet new.
					ds interaction popup text: [:each | each key frm asFloat].
					ds dotShape ellipse size: 5; color: (Color red alpha: 0.5).
					ds points: self timeLine.
					
					ds connectColor: Color lightGray.
					ds y: #frm.
					b add: ds.
					b build.
					b view canvas buildMorph ];
		act: [ composite update. ] icon: GLMUIThemeExtraIcons glamorousGrayCircleEmpty entitled: 'redraw' .