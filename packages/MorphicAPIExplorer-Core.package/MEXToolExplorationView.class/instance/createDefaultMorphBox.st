building
createDefaultMorphBox

	"self defaultMorphs do: [:morph |
		button := SimpleButtonMorph new
		label: '';
		target: self;
		actionSelector: #color:;
		arguments: {Color white};
		extent: morph extent;
		color: Color transparent;
		addMorph: morph]."
	^ {BorderedMorph new
		layoutFrame: (LayoutFrame fractions: self class fullFractions);
		color: Preferences defaultWorldColor;
		borderColor: Color gray;
		addMorph: (self defaultMorph position: self class defaultMorphPosition);
		yourself}