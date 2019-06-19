selection
listSelectionFor: aNodeItem with: aValue

	self setSelectedSelector ifNil: [^ false].
	^ model
		perform: self setSelectedSelector
		with: aNodeItem
		with: aValue