selection
listSelectionAt: anIndex

	self getSelectionSelector ifNil: [^ false].
	^ model
		perform: self getSelectionSelector
		with: anIndex