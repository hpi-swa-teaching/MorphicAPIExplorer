updating
updateSetStateOfRelatedSelector

	self model perform: self setStateOfRelatedSelector with: (self relatedMorphs collect: [:aMorph | 
		aMorph complexContents])