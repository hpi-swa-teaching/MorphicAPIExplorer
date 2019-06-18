accessing
methodAt: anInteger put: aBoolean

	self selectedMethods: (self selectedMethods
		perform: (aBoolean ifTrue: [#copyWith:] ifFalse: [#copyWithout:])
		with: (self methodList at: anInteger ifAbsent: [^ self])).
	self changed: #selectedMethods