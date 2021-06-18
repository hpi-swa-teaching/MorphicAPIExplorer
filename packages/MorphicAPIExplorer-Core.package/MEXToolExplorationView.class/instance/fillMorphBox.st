editor and playground and morphBox
fillMorphBox

	| button gap iconMorph |
	gap := 0.
	self defaultMorphs keysInOrder do: [:each |
		iconMorph := (self evaluateMethodsForMorph: each).
		self scaleForMorphBox: iconMorph.
		button := SimpleButtonMorph new
			label: '';
			target: self;
			actionSelector: #changeCurrentDefaultMorph:withSelectedMethods:;
			arguments: {each . self defaultMorphs at: each};
			extent: iconMorph extent;
			color: Color transparent;
			borderWidth: 0;
			addMorph: iconMorph;
			position: morphBox position x + self defaultMorphPosition x @ gap + self morphBox position y + self defaultMorphPosition y.
		self morphBox addMorph: button.
		gap := gap + button bottomRight y - button topRight y + self defaultMorphGapSize].