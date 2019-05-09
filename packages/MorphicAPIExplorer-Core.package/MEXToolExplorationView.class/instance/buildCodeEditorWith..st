building
buildCodeEditorWith: aBuilder

	^ (MEXCodeEditor new buildCodePaneWith: aBuilder)
		frame: (LayoutFrame new
				leftFraction: self class horizontalSpecsDistribution x;
				topFraction: self class verticalSpecsDistribution x;
				rightFraction: 1;
				bottomFraction: 1);
		yourself