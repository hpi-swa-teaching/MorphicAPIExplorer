tests
testSpecsPerRowForReturnsCorrectNumberWhenPassedAnInteger

	| specsPerRow |
	1 to: collectionSize do: [:i | categories add: MEXCategory new].
	overView categories: categories.
	1 to: maxTotalRows do: [:rows | 
		specsPerRow := overView specsPerRowFor: rows.
		self assert: specsPerRow equals: (collectionSize / rows) ceiling]