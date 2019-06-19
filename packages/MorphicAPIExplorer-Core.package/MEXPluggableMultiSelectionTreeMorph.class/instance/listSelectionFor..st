selection
listSelectionFor: aNodeItem

	self getSelectedSelector ifNil: [^ false].
	^ model
		perform: self getSelectedSelector
		with: aNodeItem