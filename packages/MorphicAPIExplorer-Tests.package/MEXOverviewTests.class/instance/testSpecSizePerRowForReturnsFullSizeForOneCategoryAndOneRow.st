tests
testSpecSizePerRowForReturnsFullSizeForOneCategoryAndOneRow

	| specSize |
	overView categories: MEXCategory new asOrderedCollection.
	specSize := overView specSizePerRowFor: 1.
	self assert: specSize equals: (1 @ 1)