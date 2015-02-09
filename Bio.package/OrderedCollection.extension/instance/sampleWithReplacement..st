*Bio
sampleWithReplacement: n
	| res |
	res := OrderedCollection new.
	n timesRepeat: [ 
		res add: self atRandom.
		].
	^ res