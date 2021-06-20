running
setUp

	super setUp.
	
	maxTotalRows := 20.
	full  := OrderedCollection new.
	defaultCollectionSize := 20.
	1 to: defaultCollectionSize do: [:anIndex | full add: 
		(MEXCategory newNamed: 'a' 
			havingImage: MEXScalableImageMorph new 
			havingDefaultMorph: Morph new 
			withMethodList: {MEXMethod newWithName: 'b'})].
	self setFullOverViewCategories