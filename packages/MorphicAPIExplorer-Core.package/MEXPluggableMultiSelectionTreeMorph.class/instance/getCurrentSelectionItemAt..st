selection
getCurrentSelectionItemAt: anIndex

	model perform: self getSelectedSelector with: anIndex.
	
	^ self items collect: [:aMorph | aMorph complexContents]
		thenSelect: [:aWrapper |
			self getSelectedSelector anySatisfy: [:selectedObject | selectedObject == aWrapper]
		]