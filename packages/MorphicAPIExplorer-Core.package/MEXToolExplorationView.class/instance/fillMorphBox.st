editor and playground and morphBox
fillMorphBox

	| button gap iconMorph |
	gap := 0.
	self savedMorphs keysSortedSafely do: [:aMorph |
		iconMorph := self evaluateMethodsForMorph: aMorph.
		self scaleForMorphBox: iconMorph.
		button := SimpleButtonMorph new
			label: '';
			target: self;
			actionSelector: #changeCurrentMorph:;
			arguments: {aMorph};
			extent: iconMorph extent;
			color: Color transparent;
			borderWidth: 0;
			addMorph: iconMorph;
			position: morphBox position x + self class firstSavedMorphPosition x @ gap + self morphBox position y + self class firstSavedMorphPosition y;
			yourself.
		self morphBox addMorph: button.
		gap := gap + button boundingBoxOfSubmorphs bottomRight y - button boundingBoxOfSubmorphs topRight y + self class savedMorphsGapSize]
		
