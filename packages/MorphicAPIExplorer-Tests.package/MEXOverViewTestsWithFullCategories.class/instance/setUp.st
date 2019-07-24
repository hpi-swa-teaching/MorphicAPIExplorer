running
setUp

	super setUp.
	
	maxTotalRows := 20.
	full  := OrderedCollection new.
	defaultCollectionSize := 20.
	1 to: defaultCollectionSize do: [:anIndex | full add: MEXCategory new].
	self setFullOverViewCategories