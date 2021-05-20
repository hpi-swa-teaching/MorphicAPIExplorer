as yet unclassified
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
			position: self class defaultMorphPosition x + gap @ self class defaultMorphPosition y.
		morphBox addMorph: button.
		gap := gap + button topRight x - button topLeft x + 10].
	