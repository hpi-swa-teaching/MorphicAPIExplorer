tests
testBuildChildrenWithReturnsCollectionWithCorrectSizeForFilledCategories

	| specCollection |
	overView categories: full.
	specCollection := overView buildChildrenWith: builder.
	self assert: specCollection size equals: defaultCollectionSize
	