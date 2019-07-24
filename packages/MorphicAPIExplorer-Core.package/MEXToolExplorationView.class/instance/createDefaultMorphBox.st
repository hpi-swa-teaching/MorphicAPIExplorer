building
createDefaultMorphBox

	^ {BorderedMorph new
		layoutFrame: (LayoutFrame fractions: self class fullFractions);
		color: Preferences defaultWorldColor;
		borderColor: Color gray;
		addMorph: (self defaultMorph position: self class defaultMorphPosition);
		yourself}