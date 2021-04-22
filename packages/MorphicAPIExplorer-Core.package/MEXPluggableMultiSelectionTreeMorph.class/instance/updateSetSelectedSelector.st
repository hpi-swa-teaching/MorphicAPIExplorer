updating
updateSetSelectedSelector

	self items do: [:anItem | self model perform: self setSelectedSelector with: anItem with: anItem isSelected]