tests
testSpecSizePerRowForReturnsFullWidthForLessCategoriesThanRows

	| specSize |
	defaultCollectionSize to: 2 * defaultCollectionSize do: [:aRowNumber | 
		specSize := overView specSizePerRowFor: aRowNumber.
		self assert: specSize x equals: 1]