building
buildDefaultMorphBoxWith: aBuilder

	^ aBuilder pluggablePanelSpec new
		model: self;
		children: #createDefaultMorphBox;
		frame: (LayoutFrame new
				leftFraction: 0;
				topFraction: self class verticalSpecsDistribution x;
				rightFraction: self class horizontalSpecsDistribution y;
				bottomFraction: 1);
		yourself