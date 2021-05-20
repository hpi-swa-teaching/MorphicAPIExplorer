editor and playground
updateMorphBox

	| newView |
	newView := self class newFromCategory: category withDefaultMorphs: defaultMorphs withActualDefaultMorph: actualDefaultMorph.
	self changeViewTo: (MEXToolBuilder open: newView)