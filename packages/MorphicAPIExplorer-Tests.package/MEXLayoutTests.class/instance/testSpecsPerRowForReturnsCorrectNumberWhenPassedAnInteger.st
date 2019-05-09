tests
testSpecsPerRowForReturnsCorrectNumberWhenPassedAnInteger

	| specsPerRow |
	overView categories: full.
	1 to: maxTotalRows do: [:rows | 
		specsPerRow := overView specsPerRowFor: rows.
		self assert: specsPerRow equals: (defaultCollectionSize / rows) ceiling]