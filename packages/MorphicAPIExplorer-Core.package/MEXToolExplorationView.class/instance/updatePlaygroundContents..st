editor and playground
updatePlaygroundContents: aMorph

	self playground submorphsDo: [:aSubmorph | aSubmorph abandon].
	aMorph openInWorld: self playground.
	aMorph position:( self playground position + (237@170))