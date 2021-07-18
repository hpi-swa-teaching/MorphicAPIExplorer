editor and playground and morphBox
createMorphBoxButtonForMorph: aMorph at: aPosition

	| iconMorph |
	iconMorph := self evaluateMethodsForMorph: aMorph.
	self scaleForMorphBox: iconMorph.

	^ SimpleButtonMorph new
		label: '';
		target: self;
		actionSelector: #changeCurrentMorph:;
		arguments: {aMorph};
		extent: iconMorph extent;
		color: Color transparent;
		borderWidth: 0;
		addMorph: iconMorph;
		position: aPosition;
		yourself