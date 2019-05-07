building
buildDefaultMorphBoxWith: aBuilder

	^ aBuilder pluggableListSpec new
		model: self;
		frame: (LayoutFrame new
				leftFraction: 0;
				topFraction: 0.67;
				rightFraction: 0.33;
				bottomFraction: 1);
		yourself