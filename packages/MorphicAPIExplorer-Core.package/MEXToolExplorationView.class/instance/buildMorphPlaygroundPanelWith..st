building
buildMorphPlaygroundPanelWith: aBuilder

	^ aBuilder pluggablePanelSpec new
		model: self;
		children: #createMorphPlayground;
		frame: (LayoutFrame new
			leftFraction: self class rightSpecsHorizontalDistribution x;
			topFraction: self class topSpecsVerticalDistribution x;
			rightFraction: self class rightSpecsHorizontalDistribution y;
			bottomFraction: self class topSpecsVerticalDistribution y;
			yourself);
		yourself