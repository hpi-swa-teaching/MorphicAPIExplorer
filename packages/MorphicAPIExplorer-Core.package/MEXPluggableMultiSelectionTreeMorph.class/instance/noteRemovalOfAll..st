private
noteRemovalOfAll: anOrderedCollection

	self scroller removeAllMorphsIn: anOrderedCollection.
	self listSelectionFor: (anOrderedCollection first complexContents item) with: false. 