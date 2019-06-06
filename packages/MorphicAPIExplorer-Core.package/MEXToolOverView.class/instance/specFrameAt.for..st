layout
specFrameAt: anIndex for: aNumber

	| column row specsPerRow specSize |
	specSize := self specSizePerRowFor: aNumber.
	specsPerRow := self specsPerRowFor: aNumber.
	row := (anIndex - 1) // specsPerRow.
	column := (anIndex - 1) \\ specsPerRow.
	
	^ (LayoutFrame new
		leftFraction: specSize x * column;
		topFraction: specSize y * row;
		rightFraction: specSize x * (column + 1);
		bottomFraction: specSize y * (row + 1);
		yourself)
		