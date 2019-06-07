building
buildDefaultMorphBoxWith: aBuilder
	
	^ aBuilder pluggablePanelSpec new
		model: self;
		children: #createDefaultMorphBox;
		frame: (LayoutFrame new
				leftFraction: self class leftSpecsHorizontalDistribution x;
				topFraction: self class bottomSpecsVerticalDistribution x;
				rightFraction: self class leftSpecsHorizontalDistribution y;
				bottomFraction: self class bottomSpecsVerticalDistribution y);
		yourself