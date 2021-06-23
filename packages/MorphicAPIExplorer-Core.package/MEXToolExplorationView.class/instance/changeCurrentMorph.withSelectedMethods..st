default morphs
changeCurrentMorph: aMorph withSelectedMethods: aMethodList

	self currentMorph: aMorph.
	self selectedMethods: aMethodList.
	self playground updateContents: aMorph.
	self changed: #currentMorph.
	self changed: #selectedMethods