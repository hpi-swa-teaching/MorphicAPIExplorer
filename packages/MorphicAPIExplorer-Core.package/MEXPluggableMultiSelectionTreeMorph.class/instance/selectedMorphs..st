selection
selectedMorphs: anOrderedCollection

	self unhighlightSelection.
	selectedMorphs := anOrderedCollection.
	self highlightSelection.
	
	self
		updateSelectedWrappers: anOrderedCollection;
		updateSelectedParentMorphs: anOrderedCollection