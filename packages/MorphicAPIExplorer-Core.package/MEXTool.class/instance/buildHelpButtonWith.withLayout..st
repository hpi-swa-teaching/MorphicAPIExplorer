building
buildHelpButtonWith: aBuilder withLayout: aDictionary
	
	^ aBuilder pluggableButtonSpec new
		model: self;
		label: (MEXScalableImageMorph newWithImage: 
			MEXResources overviewImageHelpButton
			havingExtent: (20@20));
		help: MEXResources defaultHelpButtonHelpText;
		action: [self openHelpWindow];
		frame: (LayoutFrame new
			leftFraction: (aDictionary at: #left);
			topFraction: (aDictionary at: #top);
			rightFraction: (aDictionary at: #right);
			bottomFraction: (aDictionary at: #bottom);
			yourself);
		yourself
		
	

"MEXScalableImageMorph 
			newWithImage: (MEXToolOverView categoryImages at: (aName asSymbol)) 
			havingExtent:  self defaultButtonImageExtent)"