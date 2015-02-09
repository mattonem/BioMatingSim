as yet unclassified
findLover
	| males |
	males := workingPop males.
	^ males ifEmpty: [ nil ] ifNotEmpty: [ males atRandom ]