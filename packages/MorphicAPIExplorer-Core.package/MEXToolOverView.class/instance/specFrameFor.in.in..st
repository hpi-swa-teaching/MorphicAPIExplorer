layout
specFrameFor: aSize in: aRow in: aColumn

	^ LayoutFrame new
		leftFraction: aSize x * aColumn;
		topFraction: aSize y * aRow + self class searchButtonFractionHeight ;
		rightFraction: aSize x * (aColumn + 1);
		bottomFraction: aSize y * (aRow + 1) + self class searchButtonFractionHeight;
		yourself
		