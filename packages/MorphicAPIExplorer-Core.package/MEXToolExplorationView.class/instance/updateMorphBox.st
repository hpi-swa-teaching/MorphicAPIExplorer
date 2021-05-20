editor and playground
updateMorphBox

	self morphBox submorphsDo: [:aSubmorph | aSubmorph abandon].
	self fillMorphBox
	