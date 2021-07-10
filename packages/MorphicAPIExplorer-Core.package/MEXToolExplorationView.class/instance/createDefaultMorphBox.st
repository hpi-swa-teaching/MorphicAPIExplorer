building
createDefaultMorphBox
	
    	morphBox := BorderedMorph new
		layoutFrame: (LayoutFrame fractions: self class fullFractions);
		color: Color transparent;
        	borderColor: Color transparent;
        	yourself.
	self fillMorphBox.
	^ morphBox