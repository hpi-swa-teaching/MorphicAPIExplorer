building
buildMethodListWith: aBuilder

	^ aBuilder pluggableListSpec new
		model: self;
		list: #methodList;
		frame: (LayoutFrame new
				leftFraction: self class leftSpecsDistribution x;
				topFraction: self class topSpecsDistribution x;
				rightFraction: self class leftSpecsDistribution y;
				bottomFraction: self class topSpecsDistribution y);
		yourself