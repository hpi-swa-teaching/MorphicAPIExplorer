selection
setSelectedMorphs: anOrderedCollection

	self selectedMorphs: anOrderedCollection.
	self selectedWrappers: (anOrderedCollection collect: [:aMorph | aMorph complexContents]).

	self
		setSelectedParentMorphs: anOrderedCollection;
		setSelectedPaths: anOrderedCollection