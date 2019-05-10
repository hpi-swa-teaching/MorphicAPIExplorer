building
buildCodeEditorWith: aBuilder

	^ (MEXCodeHolder new buildCodePaneWith: aBuilder)
		frame: (LayoutFrame new
				leftFraction: self class rightSpecsHorizontalDistribution x;
				topFraction: self class bottomSpecsVerticalDistribution x;
				rightFraction: self class rightSpecsHorizontalDistribution y;
				bottomFraction: self class bottomSpecsVerticalDistribution y);
		yourself