tests
testSpecSizePerRowForReturnsSizeSmallerThanWindow

	| specSize |
	1 to: maxTotalRows do: [:aRowNumber | 
		specSize := overView specSizePerRowFor: aRowNumber.
		self assert: specSize <= (1 @ 1)]