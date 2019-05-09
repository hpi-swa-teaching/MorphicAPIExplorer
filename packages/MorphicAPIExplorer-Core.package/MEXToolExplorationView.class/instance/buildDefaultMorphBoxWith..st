building
buildDefaultMorphBoxWith: aBuilder

	^ aBuilder pluggablePanelSpec new
		model: self;
		children: #createDefaultMorphBox;
		frame: (LayoutFrame new
				leftFraction: self class leftSpecsDistribution x;
				topFraction: self class bottomSpecsDistribution x;
				rightFraction: self class leftSpecsDistribution y;
				bottomFraction: self class bottomSpecsDistribution y);
		yourself