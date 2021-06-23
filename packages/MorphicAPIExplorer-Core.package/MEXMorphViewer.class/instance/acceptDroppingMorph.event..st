as yet unclassified
acceptDroppingMorph: aMorph event: anEvent

	self currentMorph: aMorph veryDeepCopy.
	self updatePlaygroundContents.
	self owner model changed: #currentMorph