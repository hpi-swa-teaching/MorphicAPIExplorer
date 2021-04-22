layout
specFrameAt: anIndex for: aNumber

	| column row specsPerRow specSize |
	specSize := self specSizePerRowFor: aNumber.
	specsPerRow := self specsPerRowFor: aNumber.
	row := (anIndex - 1) // specsPerRow.
	column := (anIndex - 1) \\ specsPerRow.
	
	^ self specFrameFor: specSize in: row in: column
		