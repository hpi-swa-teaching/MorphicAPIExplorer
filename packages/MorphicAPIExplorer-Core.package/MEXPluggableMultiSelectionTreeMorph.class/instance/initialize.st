initialization
initialize

	super initialize.

	self
		selectedMorphs: OrderedCollection new;
		getSelectedSelector: #();
		setSelectedSelector: #().
	self roots do: [:aNode | aNode expand]
