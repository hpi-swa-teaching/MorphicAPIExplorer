layout
specFrameAt: anIndex

	|column row specsPerRow specSize|
	specSize := self specSize.
	specsPerRow := self specsPerRow.
	row := anIndex - 1 // specsPerRow.
	column := anIndex -1 \\ specsPerRow.
	
	^ (LayoutFrame new
		leftFraction: specSize x * column;
		topFraction: specSize y * row;
		rightFraction: specSize x * (column + 1);
		bottomFraction: specSize y * (row + 1);
		yourself)
		