editor and playground and morphBox
updateMorphBox

	self morphBox submorphsDo: [:aSubmorph | aSubmorph abandon].
	self fillMorphBox
	