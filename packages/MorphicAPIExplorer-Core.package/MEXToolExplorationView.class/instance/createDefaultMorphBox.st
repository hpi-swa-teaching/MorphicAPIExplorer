building
createDefaultMorphBox

	"^ {BorderedMorph new
		layoutFrame: (LayoutFrame fractions: self class fullFractions);
		color: Preferences defaultWorldColor;
		borderColor: Color gray;
		addMorph: (self defaultMorph position: self class defaultMorphPosition);
		yourself}"
		
    	| gap ourMorph button |
    	gap := 10.
    	ourMorph := BorderedMorph new
		layoutFrame: (LayoutFrame fractions: self class fullFractions);
        	color: Preferences defaultWorldColor;
        	borderColor: Color gray;
        	yourself.
	self defaultMorphs keysDo: [:each |
		button := SimpleButtonMorph new
			label: '';
			target: self;
			actionSelector: #changeCurrentDefaultMorph:;
			arguments: {each};
			extent: each extent;
			color: Color transparent;
			addMorph: each;
			position: (((self class defaultMorphPosition x) + gap) @ (self class defaultMorphPosition y)).	 
		ourMorph addMorph: button.
		gap := gap + 20].
	^ {ourMorph}