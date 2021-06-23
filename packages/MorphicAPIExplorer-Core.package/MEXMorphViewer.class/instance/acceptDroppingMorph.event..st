dropping/grabbing
acceptDroppingMorph: aMorph event: anEvent

	self currentMorph: aMorph veryDeepCopy.
	self updateContents.
	self view changed: #currentMorph.
	aMorph openInWorld