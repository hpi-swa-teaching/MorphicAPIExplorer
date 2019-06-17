private
insertNewMorphs: aMorphList

	scroller addAllMorphs: aMorphList.
	self
		adjustSubmorphPositions;
		setScrollDeltas