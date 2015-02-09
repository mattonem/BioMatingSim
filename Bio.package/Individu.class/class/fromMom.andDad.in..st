as yet unclassified
fromMom: aFemale andDad: aMale in: aSim
	(self ~~ Individu) ifTrue: [ self subclassResponsibility ].
	
 	^ ((rand next < aSim sexRatio0) ifTrue: [ Male ]  ifFalse: [ Female ]) fromMom: aFemale andDad: aMale.
