building
createDefaultMorphBox

	"self defaultMorphs keysDo: [:morph |
		button := SimpleButtonMorph new
		label: '';
		target: self;
		actionSelector: #changeCurrentDefaultMorph:;
		arguments: {morph};
		extent: morph extent;
		color: Color transparent;
		addMorph: morph]."
	^ {BorderedMorph new
		layoutFrame: (LayoutFrame fractions: self class fullFractions);
		color: Preferences defaultWorldColor;
		borderColor: Color gray;
		addMorph: (self defaultMorph position: self class defaultMorphPosition);
		yourself}