building
buildDefaultMorphBoxWith: aBuilder
	
	self defaultMorph: (Morph new center: 100@100).
	^ aBuilder pluggablePanelSpec new
		model: self;
		children: #createDefaultMorphBox;
		frame: (LayoutFrame new
				leftFraction: self class leftSpecsHorizontalDistribution x;
				topFraction: self class bottomSpecsVerticalDistribution x;
				rightFraction: self class leftSpecsHorizontalDistribution y;
				bottomFraction: self class bottomSpecsVerticalDistribution y);
		yourself