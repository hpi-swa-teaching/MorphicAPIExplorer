building
buildMorphPlaygroundPanelWith: aBuilder

	^ aBuilder pluggablePanelSpec new
		model: self;
		children: #createMorphPlayground;
		frame: (LayoutFrame new
				leftFraction: self class rightSpecsDistribution x;
				topFraction: self class topSpecsDistribution x;
				rightFraction: self class rightSpecsDistribution y;
				bottomFraction: self class topSpecsDistribution y);
		yourself