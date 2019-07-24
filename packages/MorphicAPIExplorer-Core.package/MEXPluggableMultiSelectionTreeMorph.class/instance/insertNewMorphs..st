private
insertNewMorphs: anOrderedCollection

	self scroller addAllMorphs: anOrderedCollection.
	self
		adjustSubmorphPositions;
		setScrollDeltas