as yet unclassified
initPopulation: n0 withHetero: m0hetero withHomo: m0homo

	individus := OrderedCollection new.
	self assert: n0 even.
	"self assert: (n0/2) = (m0hetero + m0homo)."
	m0homo timesRepeat: [
		individus add: Female newmm.
		].
	
	m0hetero timesRepeat: [
		individus add: Female newRm.
		].
	
	(n0/2) - m0homo - m0hetero timesRepeat: [ 
		individus add: Female newRR.
		 ].
	
	n0/2 timesRepeat: [ 
		individus add: Male newR.
		].