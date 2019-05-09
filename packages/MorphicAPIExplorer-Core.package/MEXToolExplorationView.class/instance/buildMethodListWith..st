building
buildMethodListWith: aBuilder

	^ aBuilder pluggableListSpec new
		model: self;
		list: #methodList;
		frame: (LayoutFrame new
				leftFraction: 0;
				topFraction: 0;
				rightFraction: self class horizontalSpecsDistribution x;
				bottomFraction: self class verticalSpecsDistribution x);
		yourself