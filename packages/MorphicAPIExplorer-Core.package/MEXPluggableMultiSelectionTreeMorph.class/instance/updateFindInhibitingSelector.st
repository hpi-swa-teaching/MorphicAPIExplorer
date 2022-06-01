updating
updateFindInhibitingSelector

	self hoveredMorph 
		ifNil: [
			self inhibitingMorphs: OrderedCollection new]
		ifNotNil: [
			self inhibitingMorphs: (self items select: [:anItem | 
			(self model perform: self getInhibitingSelector with: self hoveredMorph complexContents)
				includes: anItem complexContents asString])]