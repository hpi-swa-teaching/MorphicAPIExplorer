accessing
selectedMorphs: anOrderedCollection
	"Additionally handles internal updates compared to basicSelectedMorphs:" 

	"self unhighlightSelection."
	selectedMorphs := anOrderedCollection.
	self highlightSelection.

	self
		updateSelectedWrappers: anOrderedCollection;
		updateSelectedParentMorphs: anOrderedCollection