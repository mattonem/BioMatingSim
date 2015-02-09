as yet unclassified
sexRatio
	self sizePop = 0 ifTrue: [ ^ 0 ].
	^ self males size / (self males size + self females size)