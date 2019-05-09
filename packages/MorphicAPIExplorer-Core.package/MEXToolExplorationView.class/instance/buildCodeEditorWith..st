building
buildCodeEditorWith: aBuilder

	^ (MEXCodeEditor new buildCodePaneWith: aBuilder)
		frame: (LayoutFrame new
				leftFraction: self class rightSpecsDistribution x;
				topFraction: self class bottomSpecsDistribution x;
				rightFraction: self class rightSpecsDistribution y;
				bottomFraction: self class bottomSpecsDistribution y);
		yourself