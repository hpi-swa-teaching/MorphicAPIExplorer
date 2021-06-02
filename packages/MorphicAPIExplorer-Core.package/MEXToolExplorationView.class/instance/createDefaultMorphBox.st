building
createDefaultMorphBox
	
    	morphBox := BorderedMorph new
		layoutFrame: (LayoutFrame fractions: self class fullFractions);
        	color: Color transparent; "Preferences defaultWorldColor;"
        	borderColor: Color transparent;
        	yourself.
	self fillMorphBox.
	^ {morphBox}