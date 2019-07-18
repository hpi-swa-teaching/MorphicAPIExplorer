selection
listSelectionFor: aNodeItem with: aValue

	self setSelectedSelector ifNil: [^ false].
	^ self model
		perform: self setSelectedSelector
		with: aNodeItem
		with: aValue