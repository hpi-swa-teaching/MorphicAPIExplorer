editor and playground
updatePlaygroundContents: aMorph

	self clearPlayground.
	aMorph
		openInWorld: self playground;
		center: self playground center