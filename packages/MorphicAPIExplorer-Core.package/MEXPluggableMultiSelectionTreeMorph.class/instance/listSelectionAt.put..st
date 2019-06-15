selection
listSelectionAt: anIndex put: aValue

	setSelectionSelector ifNil: [^ false].
	^ model
		perform: setSelectionSelector
		with: anIndex
		with: aValue