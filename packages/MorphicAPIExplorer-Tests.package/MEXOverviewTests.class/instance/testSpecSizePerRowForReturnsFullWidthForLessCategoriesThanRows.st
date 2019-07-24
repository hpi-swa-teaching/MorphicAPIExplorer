tests
testSpecSizePerRowForReturnsFullWidthForLessCategoriesThanRows

	| specSize |
	overView categories: full.
	defaultCollectionSize to: 2 * defaultCollectionSize do: [:rows | 
		specSize := overView specSizePerRowFor: rows.
		self assert: specSize x equals: 1]