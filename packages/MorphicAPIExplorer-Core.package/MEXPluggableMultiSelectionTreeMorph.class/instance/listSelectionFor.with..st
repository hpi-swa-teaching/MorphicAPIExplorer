selection
listSelectionFor: aNodeItem with: aValue

	^ self model
		perform: self setSelectedSelector
		with: aNodeItem
		with: aValue