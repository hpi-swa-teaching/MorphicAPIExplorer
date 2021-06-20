building
buildCodeEditorWith: aBuilder

	| codeHolder |
	codeHolder := MEXCodeHolder newWithView: self.
	self addDependent: codeHolder. 

	^ (codeHolder buildCodePaneWith: aBuilder)
		frame: (LayoutFrame new
			leftFraction: self class rightSpecsHorizontalDistribution x;
			topFraction: self class bottomSpecsVerticalDistribution x;
			rightFraction: self class rightSpecsHorizontalDistribution y;
			bottomFraction: self class bottomSpecsVerticalDistribution y);
		yourself