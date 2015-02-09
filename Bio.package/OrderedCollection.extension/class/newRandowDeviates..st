*Bio
newRandowDeviates: n
	| res rand |
	res := self new.
	rand := Random new.
	n timesRepeat: [
		res add: rand next.
		]. 
	^ res
	