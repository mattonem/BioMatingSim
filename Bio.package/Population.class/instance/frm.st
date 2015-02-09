as yet unclassified
frm
	self sizePop = 0 ifTrue: [ ^ 0 ].
	^ (self femalesmm size * 2 + self femalesRm size + self malesm size) / self sizePop