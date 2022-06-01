building
buildHelpButtonWith: aBuilder withLayout: aDictionary
	
	^ aBuilder pluggableButtonSpec new
		model: self;
		label: MEXResources overviewImageHelpButton;
		help: MEXResources defaultHelpButtonHelpText;
		action: [self openHelpWindow];
		frame: (LayoutFrame new
			leftFraction: (aDictionary at: #left);
			topFraction: (aDictionary at: #top);
			rightFraction: (aDictionary at: #right);
			bottomFraction: (aDictionary at: #bottom);
			yourself);
		yourself