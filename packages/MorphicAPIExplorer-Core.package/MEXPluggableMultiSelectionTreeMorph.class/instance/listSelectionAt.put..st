selection
listSelectionAt: anIndex put: aValue

	self setSelectionSelector ifNil: [^ false].
	^ model
		perform: self setSelectionSelector
		with: anIndex
		with: aValue