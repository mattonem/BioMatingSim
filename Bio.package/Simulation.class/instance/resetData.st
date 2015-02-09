as yet unclassified
resetData
	| pop0 |
	timeline := Dictionary new.
	pop0 := Population new initPopulation: maxPop withHetero: hetero withHomo: homo ; yourself.
	timeline at:0 put: pop0.
	 