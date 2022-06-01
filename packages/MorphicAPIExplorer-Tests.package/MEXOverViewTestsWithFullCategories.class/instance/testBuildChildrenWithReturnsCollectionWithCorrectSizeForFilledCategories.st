tests
testBuildChildrenWithReturnsCollectionWithCorrectSizeForFilledCategories

	self assert: self getFullCollectionOfOverViewChildren size equals: (defaultCollectionSize + 3)
	