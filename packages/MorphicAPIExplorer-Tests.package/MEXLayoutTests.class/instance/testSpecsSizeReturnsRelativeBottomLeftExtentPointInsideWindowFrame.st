tests
testSpecsSizeReturnsRelativeBottomLeftExtentPointInsideWindowFrame

	| specSize specsPerRow|
	1 to: collectionSize do: [:i | categories add: MEXCategory new].
	overView categories: categories.
	1 to: maxTotalRows do: [:rows | 
		specSize := overView specSizePerRowFor: rows.
		specsPerRow := overView specsPerRowFor: rows.
		self assert: ((specSize x <= 1) and: (specSize y <= 1))]