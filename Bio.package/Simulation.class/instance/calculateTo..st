as yet unclassified
calculateTo: anInteger 
	|state|
	state := self stepOn: (timeline at:0).
	1 to: anInteger do: [:i | timeline at: i put: state. state := self stepOn: state]