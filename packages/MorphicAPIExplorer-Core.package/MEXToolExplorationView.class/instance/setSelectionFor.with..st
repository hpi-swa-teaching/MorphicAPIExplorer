accessing
setSelectionFor: aMEXMethod with: aBoolean 

	aMEXMethod isSelected: aBoolean.
	self
		selectedMethods: (self selectedMethods
			perform: (aBoolean ifTrue: [#copyWith:] ifFalse: [#copyWithout:])
			with: aMEXMethod);
		changed: #selectedMethods