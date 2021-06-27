updating
updateGetSelectedSelector

	self selectedMorphs: (self items select: [:anItem | 
		(self model perform: self getSelectedSelector) includes: anItem complexContents item]) asOrderedCollection.
	self changed