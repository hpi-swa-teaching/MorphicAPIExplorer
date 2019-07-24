updating
updateGetSelectedSelector

	self items do: [:anItem | self model perform: self getSelectedSelector with: anItem]