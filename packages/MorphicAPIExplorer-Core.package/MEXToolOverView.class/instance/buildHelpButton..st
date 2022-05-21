building
buildHelpButton: aBuilder
	
	^ aBuilder pluggableButtonSpec new
		model: self;
		label: MEXResources overviewImageHelpButton;
		help: self class helpButtonHelpText;
		action: [self openHelpWindow];
		frame: (LayoutFrame new
			leftFraction: 0.9;
			topFraction: 0;
			rightFraction: 1;
			bottomFraction: self class helpButtonFractionHeight;
			yourself);
		yourself