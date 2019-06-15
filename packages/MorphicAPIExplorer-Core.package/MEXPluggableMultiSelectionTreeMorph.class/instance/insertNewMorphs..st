private
insertNewMorphs: aMorphList

	scroller addAllMorphs: aMorphList.
	self adjustSubmorphPositions.
	aMorphList do: [:aMorph | self selection: (self getCurrentSelectionItemAt: (aMorphList indexOf: aMorph))].
	self setScrollDeltas