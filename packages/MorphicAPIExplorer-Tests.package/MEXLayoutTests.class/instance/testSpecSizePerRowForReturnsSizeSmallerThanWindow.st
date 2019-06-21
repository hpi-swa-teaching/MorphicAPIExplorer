tests
testSpecSizePerRowForReturnsSizeSmallerThanWindow

	| specSize specsPerRow |
	overView categories: full.
	1 to: maxTotalRows do: [:rows | 
		specSize := overView specSizePerRowFor: rows.
		specsPerRow := overView specsPerRowFor: rows.
		self assert: (specSize <= (1 @ 1))]