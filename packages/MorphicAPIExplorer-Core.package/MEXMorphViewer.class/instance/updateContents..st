updating
updateContents: aMorph

	self 
		clearContents;
		currentMorph: aMorph.
	aMorph
		openInWorld: self;
		center: self center