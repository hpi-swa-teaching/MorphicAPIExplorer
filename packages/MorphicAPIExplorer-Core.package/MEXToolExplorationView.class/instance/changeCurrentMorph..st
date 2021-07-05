default morphs
changeCurrentMorph: aMorph
	
	self currentMorph: aMorph.
	self selectedMethods: (self defaultMorphs at: aMorph).
	self playground updateContents: aMorph.
	self changed: #selectedMethods