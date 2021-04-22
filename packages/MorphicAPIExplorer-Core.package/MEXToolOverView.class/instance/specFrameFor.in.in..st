layout
specFrameFor: aSize in: aRow in: aColumn

	^ LayoutFrame new
		leftFraction: aSize x * aColumn;
		topFraction: aSize y * aRow;
		rightFraction: aSize x * (aColumn + 1);
		bottomFraction: aSize y * (aRow + 1);
		yourself
		