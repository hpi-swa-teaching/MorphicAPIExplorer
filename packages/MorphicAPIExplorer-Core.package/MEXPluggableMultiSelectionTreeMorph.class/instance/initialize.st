initialization
initialize

	super initialize.

	self
		selectedMorphs: OrderedCollection new;
		basicRelatedMorphs: OrderedCollection new;
		getSelectedSelector: #();
		setSelectedSelector: #().
	self roots do: [:aNode | aNode expand]
