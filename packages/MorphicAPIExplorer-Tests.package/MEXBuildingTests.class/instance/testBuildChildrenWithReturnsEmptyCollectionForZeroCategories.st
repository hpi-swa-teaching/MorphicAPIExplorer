tests
testBuildChildrenWithReturnsEmptyCollectionForZeroCategories

	| specCollection |
	overView categories: empty.
	specCollection := overView buildChildrenWith: builder.
	self assert: specCollection size equals: 0
	