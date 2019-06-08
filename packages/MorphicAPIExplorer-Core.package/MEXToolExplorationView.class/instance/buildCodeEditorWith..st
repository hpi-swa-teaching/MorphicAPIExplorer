building
buildCodeEditorWith: aBuilder

	self codeHolder: MEXCodeHolder new.
	^(codeHolder buildCodePaneWith: aBuilder)
		frame: (LayoutFrame new
				leftFraction: self class rightSpecsHorizontalDistribution x;
				topFraction: self class bottomSpecsVerticalDistribution x;
				rightFraction: self class rightSpecsHorizontalDistribution y;
				bottomFraction: self class bottomSpecsVerticalDistribution y);
		yourself.