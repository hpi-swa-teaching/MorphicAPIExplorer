updating
updateContents: aMorph

	self clearContents.
	self currentMorph: aMorph.
	aMorph
		openInWorld: self;
		center: self center