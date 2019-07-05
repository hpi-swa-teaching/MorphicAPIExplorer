editor and playground
updatePlaygroundContents: aMorph

	self playground submorphsDo: [:aSubmorph | aSubmorph abandon].
	aMorph openInWorld: self playground