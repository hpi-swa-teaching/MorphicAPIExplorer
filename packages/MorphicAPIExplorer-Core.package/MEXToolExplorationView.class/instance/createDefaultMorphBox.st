building
createDefaultMorphBox
	
    	morphBox := BorderedMorph new
		layoutFrame: (LayoutFrame fractions: self class fullFractions);
		color: Preferences defaultWorldColor;
        	borderColor: Color gray;
        	yourself.
	self morphBox extent: self morphBox owner extent.
	self fillMorphBox.
	^ morphBox