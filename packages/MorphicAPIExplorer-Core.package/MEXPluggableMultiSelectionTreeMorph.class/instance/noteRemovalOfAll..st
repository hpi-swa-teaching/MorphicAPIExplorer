private
noteRemovalOfAll: aCollection

	self scroller removeAllMorphsIn: aCollection.
	self selectedMorphs
		select: [:aSelectedMorph | aCollection includes: aSelectedMorph]
		thenDo: [:aSelectedChildMorph | self removeFromSelectedMorphs: aSelectedChildMorph]