as yet unclassified
reSize: aNbr
	| nbrMales nbrFemales resizedPop |
	(self sizePop < aNbr) ifTrue: [ ^ self ] ifFalse: [
		nbrMales := (self sexRatio * aNbr) rounded.
		nbrFemales := ((1 - self sexRatio) * aNbr) rounded.
		
		resizedPop := Population new.
		
		resizedPop addAll: (self males sampleWithoutReplacement: nbrMales).
		resizedPop addAll: (self females sampleWithoutReplacement: nbrFemales).
		^ resizedPop.
		]