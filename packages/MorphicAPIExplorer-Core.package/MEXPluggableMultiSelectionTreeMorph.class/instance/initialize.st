initialization
initialize

	super initialize.

	self
		selectedMorphs: OrderedCollection new;
		relatedMorphs: OrderedCollection new;
		getSelectedSelector: #();
		setSelectedSelector: #()