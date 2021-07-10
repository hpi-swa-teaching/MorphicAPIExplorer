default morphs
changeCurrentMorph: aMorph
	
	self currentMorph: aMorph.
	self selectedMethods: (self savedMorphs at: aMorph).
	self playground updateContents: aMorph.
	self changed: #selectedMethods