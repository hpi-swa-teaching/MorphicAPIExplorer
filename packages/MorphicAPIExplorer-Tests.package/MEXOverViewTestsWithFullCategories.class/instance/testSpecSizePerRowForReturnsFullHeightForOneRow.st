tests
testSpecSizePerRowForReturnsFullHeightForOneRow

	| specSize |
	specSize := overView specSizePerRowFor: 1.
	self assert: specSize y equals: 0.95