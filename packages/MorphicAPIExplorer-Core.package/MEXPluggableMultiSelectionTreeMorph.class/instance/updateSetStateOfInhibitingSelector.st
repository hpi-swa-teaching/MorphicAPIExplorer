updating
updateSetStateOfInhibitingSelector

			self model perform: self setStateOfInihibitingSelector with: (self inhibitingMorphs collect: [:aMorph | 
		aMorph complexContents])
