as yet unclassified
repoduceIn: aSim
	^ self ismm
		ifTrue: [ aSim fm timesRepeat: [ aSim addEgg: Male newm ] ]
		ifFalse: [ 
			| lover |
			lover := aSim findLover.
			aSim fr timesRepeat: [ lover ifNotNil: [ aSim addEgg: (self mateWith: lover in: aSim) ] ] ]