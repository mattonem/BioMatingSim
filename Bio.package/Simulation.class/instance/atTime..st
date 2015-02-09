as yet unclassified
atTime: t
	^ timeline at: t ifAbsentPut: [ 
		self stepOn: (self atTime: t - 1).
		]