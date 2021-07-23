building
buildMorphBoxWith: aBuilder
	
	|morphBoxMorph|
	morphBoxMorph := self createMorphBox.
	^ aBuilder pluggableScrollPaneSpec new
		model: self;
		morph: morphBoxMorph;
		hScrollBarPolicy: #whenNeeded;
		frame: (LayoutFrame new
			leftFraction: self class leftSpecsHorizontalDistribution x;
			topFraction: self class bottomSpecsVerticalDistribution x;
			rightFraction: self class leftSpecsHorizontalDistribution y;
			bottomFraction: self class bottomSpecsVerticalDistribution y;
			yourself);
		yourself