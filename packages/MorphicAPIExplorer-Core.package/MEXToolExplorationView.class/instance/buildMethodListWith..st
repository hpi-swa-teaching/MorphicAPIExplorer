building
buildMethodListWith: aBuilder

	^ aBuilder pluggableTreeSpec new
		model: self;
		roots: #methodList;
		nodeClass: MEXMethodListItemWrapper;
		getSelected: #selectedMethod;
		setSelected: #selectedMethod:;
		frame: (LayoutFrame new
				leftFraction: self class leftSpecsHorizontalDistribution x;
				topFraction: self class backButtonFractionHeight y;
				rightFraction: self class leftSpecsHorizontalDistribution y;
				bottomFraction: self class topSpecsVerticalDistribution y);
		yourself