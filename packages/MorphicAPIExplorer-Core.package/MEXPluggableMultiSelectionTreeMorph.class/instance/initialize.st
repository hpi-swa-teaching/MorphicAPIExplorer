initialization
initialize

	super initialize.
	self
		selectedMorphs: OrderedCollection new;
		selectedWrappers: OrderedCollection new;
		setSelectedParentsSelector: #();
		getSelectedPathsSelector: #();
		setSelectedPathsSelector: #();
		getSelectedSelector: #();
		setSelectedSelector: #()