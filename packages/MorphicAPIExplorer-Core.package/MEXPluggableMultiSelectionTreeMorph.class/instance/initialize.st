initialization
initialize

	super initialize.

	self
		selectedMorphs: OrderedCollection new;
		basicRelatedMorphs: OrderedCollection new;
		inhibitingMorphs: OrderedCollection new;
		setStateOfRelatedSelector: #();
		setStateOfInihibitingSelector: #();
		getRelatedSelector: #();
		getInhibitingSelector: #();
		getSelectedSelector: #();
		setSelectedSelector: #();
		getHelpSelector: #().
	self roots do: [:aNode | aNode expand]
