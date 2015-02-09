as yet unclassified
fromMom: aFemale andDad: aMale 
	(self ~~ Individu) ifTrue: [ self subclassResponsibility ].
 	^ (self subclasses atRandom) fromMom: aFemale andDad: aMale.
