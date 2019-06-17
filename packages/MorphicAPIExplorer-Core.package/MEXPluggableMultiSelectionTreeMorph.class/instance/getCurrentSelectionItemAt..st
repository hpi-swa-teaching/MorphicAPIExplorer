selection
getCurrentSelectionItemAt: anIndex

	| selectedObject |
	selectedObject := model perform: self getSelectedSelector with: anIndex.
	
	^ self items
		collect: [:aMorph | aMorph complexContents]
		thenSelect: [:aWrapper | selectedObject == aWrapper]