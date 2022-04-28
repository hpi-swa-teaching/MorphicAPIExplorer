editor and playground and morphBox
fillMorphBox

	| button nextPosition |
	nextPosition := self class firstSavedMorphPosition + self morphBox position.
	self savedMorphs keysSortedSafely do: [:aMorph |
		button := self createMorphBoxButtonForMorph: aMorph at: nextPosition.
		self morphBox addMorph: button.
		nextPosition := nextPosition + (0 @ (button boundingBoxOfSubmorphs bottomRight y - button boundingBoxOfSubmorphs topRight y + self class savedMorphsGapSize))]