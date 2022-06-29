dropping/grabbing
acceptDroppingMorph: aMorph event: anEvent

	self updateContents: aMorph veryDeepCopy.
	self explorationView changed: #currentMorph.
	aMorph openInWorld