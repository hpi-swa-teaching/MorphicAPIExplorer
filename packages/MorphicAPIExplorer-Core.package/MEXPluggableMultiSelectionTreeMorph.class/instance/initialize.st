initialization
initialize

	super initialize.
	self
		selectedMorphs: OrderedCollection new;
		potentialDropMorphs: OrderedCollection new;
		selectedWrappers: OrderedCollection new;
		setSelectedParentsSelector: #();
		getSelectedPathsSelector: #();
		setSelectedPathsSelector: #();
		dropItemsSelector: #();
		dragItemsSelector: #()