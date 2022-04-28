updating
updateGetSelectedSelector
	
	| selectedElementsAsStrings |
	selectedElementsAsStrings := (self model perform: self getSelectedSelector) 
		collect: [:aSelectedElement | aSelectedElement asString].
	self selectedMorphs: (self items select: [:anItem | 
		selectedElementsAsStrings includes: anItem complexContents item asString]) asOrderedCollection.
	self changed