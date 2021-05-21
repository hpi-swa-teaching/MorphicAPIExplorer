editor and playground and morphBox
updatePlaygroundContents: aMorph

	self clearPlayground.
	aMorph
		openInWorld: self playground;
		center: self playground center