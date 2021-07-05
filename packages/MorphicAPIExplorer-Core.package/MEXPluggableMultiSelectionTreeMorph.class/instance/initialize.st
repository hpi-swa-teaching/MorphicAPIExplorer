initialization
initialize

	super initialize.

	self
		selectedMorphs: OrderedCollection new;
		basicRelatedMorphs: OrderedCollection new;
		setStateOfRelatedSelector: #();
		findRelatedSelector: #();
		getSelectedSelector: #();
		setSelectedSelector: #().
	self roots do: [:aNode | aNode expand]
