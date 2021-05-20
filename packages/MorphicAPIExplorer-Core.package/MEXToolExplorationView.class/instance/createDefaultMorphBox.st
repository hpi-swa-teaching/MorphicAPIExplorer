building
createDefaultMorphBox
	
    	morphBox := BorderedMorph new
		layoutFrame: (LayoutFrame fractions: self class fullFractions);
        	color: Preferences defaultWorldColor;
        	borderColor: Color gray;
        	yourself.
	self fillMorphBox.
	^ {morphBox}