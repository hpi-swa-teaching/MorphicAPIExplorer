tests
testSpecSizePerRowForReturnsSizeSmallerThanWindow

	| specSize |
	overView categories: full.
	1 to: maxTotalRows do: [:rows | 
		specSize := overView specSizePerRowFor: rows.
		self assert: (specSize <= (1 @ 1))]