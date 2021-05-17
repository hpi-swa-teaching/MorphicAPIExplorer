default morphs
changeCurrentDefaultMorph: aMorph

	self defaultMorph: aMorph.
	self updatePlaygroundContents: aMorph.
	