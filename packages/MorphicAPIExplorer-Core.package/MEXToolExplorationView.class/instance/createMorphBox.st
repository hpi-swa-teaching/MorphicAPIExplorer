building
createMorphBox
	
	self morphBox: BorderedMorph new.
	self morphBox
		layoutFrame: (LayoutFrame fractions: self class fullFractions);
		color: Color transparent;
		borderColor: Color transparent;
		yourself.
	self fillMorphBox.

	^ {morphBox}