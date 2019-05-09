building
buildMorphPlaygroundPanelWith: aBuilder

	^ aBuilder pluggablePanelSpec new
		model: self;
		children: #createMorphPlayground;
		frame: (LayoutFrame new
				leftFraction: self class horizontalSpecsDistribution x;
				topFraction: 0;
				rightFraction: 1;
				bottomFraction: self class verticalSpecsDistribution x);
		yourself