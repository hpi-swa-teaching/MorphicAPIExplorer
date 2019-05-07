tests
testBuildChildrenWithReturnsCollectionWithCorrectSizeForFilledCategories

	| specCollection |
	overView categories: full.
	specCollection := overView buildChildrenWith: toolbuilder.
	self assert: specCollection size equals: defaultCollectionSize
	