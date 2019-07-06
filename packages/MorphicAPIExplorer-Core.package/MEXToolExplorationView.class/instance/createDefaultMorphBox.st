building
createDefaultMorphBox

	^ {BorderedMorph new
		layoutFrame: (LayoutFrame fractions: (0@0 rect: 1@1));
		color: Preferences defaultWorldColor;
		borderColor: Color gray;
		addMorph: (self defaultMorph position: 0@0);
		yourself
	} asOrderedCollection