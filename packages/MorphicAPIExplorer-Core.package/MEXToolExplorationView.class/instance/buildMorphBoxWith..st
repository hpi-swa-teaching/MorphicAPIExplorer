building
buildMorphBoxWith: aBuilder
	
	^ aBuilder pluggableScrollPaneSpec new
		model: self;
		morph: self createMorphBox;
		hScrollBarPolicy: #whenNeeded;
		frame: (LayoutFrame new
			leftFraction: self class leftSpecsHorizontalDistribution x;
			topFraction: self class bottomSpecsVerticalDistribution x;
			rightFraction: self class leftSpecsHorizontalDistribution y;
			bottomFraction: self class bottomSpecsVerticalDistribution y;
			yourself);
		yourself