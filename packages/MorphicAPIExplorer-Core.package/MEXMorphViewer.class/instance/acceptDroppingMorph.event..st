dropping/grabbing
acceptDroppingMorph: aMorph event: anEvent

	self updateContents: aMorph veryDeepCopy.
	self view changed: #currentMorph.
	aMorph openInWorld