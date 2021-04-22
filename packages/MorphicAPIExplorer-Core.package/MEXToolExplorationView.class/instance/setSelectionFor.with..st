accessing
setSelectionFor: aMethod with: aBoolean 

	aMethod isSelected: aBoolean.
	self
		selectedMethods: (self selectedMethods
			perform: (aBoolean ifTrue: [#copyWith:] ifFalse: [#copyWithout:])
			with: aMethod);
		changed: #selectedMethods