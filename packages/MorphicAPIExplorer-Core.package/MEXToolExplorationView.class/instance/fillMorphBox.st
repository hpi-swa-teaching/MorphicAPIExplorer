editor and playground and morphBox
fillMorphBox

	| button gap iconMorph |
	gap := 0.
	self defaultMorphs keysInOrder do: [:each |
		iconMorph := (self evaluateMethodsForMorph: each).
		button := SimpleButtonMorph new
			label: '';
			target: self;
			actionSelector: #changeCurrentDefaultMorph:withSelectedMethods:;
			arguments: {each . self defaultMorphs at: each};
			extent: iconMorph extent;
			addMorph: iconMorph;
			position: morphBox position x + self class defaultMorphPosition x @ gap + morphBox position y + self class defaultMorphPosition y.
		morphBox addMorph: button.
		gap := gap + button bottomRight y - button topRight y + self class defaultMorphGapSize].