tests
testSpecsPerRowForReturnsCorrectNumberWhenPassedAnInteger

	| specsPerRow |
	1 to: maxTotalRows do: [:aRowNumber | 
		specsPerRow := overView specsPerRowFor: aRowNumber.
		self assert: specsPerRow equals: (defaultCollectionSize / aRowNumber) ceiling]