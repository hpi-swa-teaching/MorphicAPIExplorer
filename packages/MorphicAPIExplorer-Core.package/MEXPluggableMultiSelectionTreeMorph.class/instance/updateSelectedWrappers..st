updating
updateSelectedWrappers: anOrderedCollection

	self selectedWrappers: (anOrderedCollection collect: [:aMorph | aMorph complexContents])