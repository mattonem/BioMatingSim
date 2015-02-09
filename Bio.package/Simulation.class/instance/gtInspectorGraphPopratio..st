as yet unclassified
gtInspectorGraphPopratio: composite
	<gtInspectorPresentationOrder: 40>
	^ composite morph
		title: 'PopRatio';
		display: [ 
					|b ds lb|
					self atTime: self duration.
					
					b := RTGrapher new.
					b extent: 800 @ 400.
					ds := RTStackedDataSet new.
					ds barShape color: Color paleBlue.
					ds interaction popup text: [:each | each femalesmm size ].
					ds points: self timeLine.
					ds y: #sizePop.
					b add: ds.
					ds := RTStackedDataSet new.
					ds barShape color: Color paleRed.
					ds interaction popup text:  [ :each | each femalesRm size + each femalesmm size ].
					ds points: self timeLine.
					ds y: [ :each | each femalesRm size + each femalesRR size + each malesR size + each malesm size ].
					b add: ds.
					ds := RTStackedDataSet new.
					ds barShape color: Color paleGreen.
					ds interaction popup text: [ :each | each malesR size ].
					ds points: self timeLine.
					ds y: [ :each | each malesR size + each malesm size ].
					b add: ds.
					ds := RTStackedDataSet new.
					ds barShape color: Color paleOrange.
					ds interaction popup text:[ :each | each malesm size ].
					ds points: self timeLine.
					ds y: [ :each | each malesm size ].
					b add: ds.
					lb := RTLegendBuilder new.
					lb view: b view.
					lb addText: 'Pop distribution'.
					lb addColor: Color paleOrange text: 'Male M'.
					lb addColor: Color paleGreen text: 'Male R'.
					lb addColor: Color paleRed text: 'Female RR & RM'.
					lb addColor: Color paleBlue text: 'Female MM'.
					lb build.
					b build.
					b view canvas buildMorph ];
				act: [ composite update. ] icon: GLMUIThemeExtraIcons glamorousGrayCircleEmpty entitled: 'redraw' .