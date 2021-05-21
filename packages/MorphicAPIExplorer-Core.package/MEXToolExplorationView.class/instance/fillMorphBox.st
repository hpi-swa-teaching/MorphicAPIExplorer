editor and playground and morphBox
fillMorphBox

	| button gap |
	gap := 0.
	self defaultMorphs keysInOrder do: [:each |
		button := SimpleButtonMorph new
			label: '';
			target: self;
			actionSelector: #changeCurrentDefaultMorph:withSelectedMethods:;
			arguments: {each . self defaultMorphs at: each};
			extent: each extent;
			addMorph: (self evaluateMethodsForMorph: each);
			position: morphBox position x + gap + self class defaultMorphPosition x @ morphBox position y + self class defaultMorphPosition y.
		morphBox addMorph: button.
		gap := gap + button topRight x - button topLeft x + 10].
	