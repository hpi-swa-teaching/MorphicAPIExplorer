initialization
initialize

	super initialize.

	self
		selectedMorphs: OrderedCollection new;
		getSelectedSelector: #();
		setSelectedSelector: #()