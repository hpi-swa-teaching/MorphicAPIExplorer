tests
testSpecSizePerRowForReturnsErrorForZeroCategories

	overView categories: empty.
	self should: [overView specSizePerRowFor: 1] raise: Error