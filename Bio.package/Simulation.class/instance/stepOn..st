as yet unclassified
stepOn: aPopulation
	
	workingPop := aPopulation.
	eggPool := Population new.	
	aPopulation individuDo: [ :anIndividu |
		anIndividu accept: self.
		].
	^ eggPool reSize: maxPop