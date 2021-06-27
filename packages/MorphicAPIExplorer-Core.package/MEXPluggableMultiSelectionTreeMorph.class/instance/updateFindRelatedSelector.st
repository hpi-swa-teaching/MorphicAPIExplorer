updating
updateFindRelatedSelector

	hoveredMorph ifNil: (self relatedMorphs: OrderedCollection new)
	ifNotNil: [
	self relatedMorphs: (self items select: [:anItem | 
		(model perform: self findRelatedSelector with: hoveredMorph complexContents) 
			includes: anItem complexContents asString])]