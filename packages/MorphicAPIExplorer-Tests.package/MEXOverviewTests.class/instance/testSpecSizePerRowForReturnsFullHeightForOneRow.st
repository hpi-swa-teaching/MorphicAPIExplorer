tests
testSpecSizePerRowForReturnsFullHeightForOneRow

	| specSize |
	overView categories: full.
	specSize := overView specSizePerRowFor: 1.
	self assert: specSize y equals: 1