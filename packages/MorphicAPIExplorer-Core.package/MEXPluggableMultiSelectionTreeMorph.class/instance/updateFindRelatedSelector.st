updating
updateFindRelatedSelector

	self hoveredMorph 
	ifNil: [self relatedMorphs: OrderedCollection new]
	ifNotNil: [self relatedMorphs: (self items select: [:anItem | 
		(self model perform: self findRelatedSelector with: self hoveredMorph complexContents) 
			includes: anItem complexContents asString])]