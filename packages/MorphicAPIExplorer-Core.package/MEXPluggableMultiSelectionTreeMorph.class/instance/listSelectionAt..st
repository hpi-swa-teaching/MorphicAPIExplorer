selection
listSelectionAt: anIndex

	getSelectionSelector ifNil: [^ false].
	^ model
		perform: getSelectionSelector
		with: anIndex