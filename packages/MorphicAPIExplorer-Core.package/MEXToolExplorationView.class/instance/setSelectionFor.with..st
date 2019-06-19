accessing
setSelectionFor: aMethod with: aBoolean 

	aMethod getSelectionFor: aBoolean.
	self selectedMethods: (self selectedMethods
		perform: (aBoolean ifTrue: [#copyWith:] ifFalse: [#copyWithout:])
		with: aMethod).
	self changed: #selectedMethods