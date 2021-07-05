default morphs
changeCurrentMorph: aMorph
	
	self defaultMorph: aMorph.
	self selectedMethods: (self defaultMorphs at: aMorph).
	self updatePlaygroundContents: aMorph.
	self changed: #selectedMethods