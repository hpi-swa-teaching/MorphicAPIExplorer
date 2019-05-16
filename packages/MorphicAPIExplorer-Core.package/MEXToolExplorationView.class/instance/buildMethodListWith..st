building
buildMethodListWith: aBuilder

	^ aBuilder pluggableMultiSelectionListSpec new
		model: self;
		list: #methodList;
		frame: (LayoutFrame new
				leftFraction: self class leftSpecsHorizontalDistribution x;
				topFraction: self class backButtonFractionHeight y;
				rightFraction: self class leftSpecsHorizontalDistribution y;
				bottomFraction: self class topSpecsVerticalDistribution y);
		yourself