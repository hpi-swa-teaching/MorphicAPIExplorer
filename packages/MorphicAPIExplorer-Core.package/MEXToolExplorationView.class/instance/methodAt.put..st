accessing
methodAt: anInteger put: aBoolean

	selectedMethods := selectedMethods
		perform: (aBoolean ifTrue: [ #copyWith: ] ifFalse: [ #copyWithout: ])
		with: (self methodList at: anInteger ifAbsent: [ ^ self ]).
	self changed: #methodSelected