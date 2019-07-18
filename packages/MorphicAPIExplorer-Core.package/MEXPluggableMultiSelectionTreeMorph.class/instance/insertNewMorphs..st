private
insertNewMorphs: aMorphList

	self scroller addAllMorphs: aMorphList.
	self
		adjustSubmorphPositions;
		setScrollDeltas