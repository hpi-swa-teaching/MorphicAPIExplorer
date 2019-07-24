private
noteRemovalOfAll: anOrderedCollection

	self scroller removeAllMorphsIn: anOrderedCollection.
	self selectedMorphs
		select: [:aSelectedMorph | anOrderedCollection includes: aSelectedMorph]
		thenDo: [:aSelectedChildMorph | self removeFromSelectedMorphs: aSelectedChildMorph]