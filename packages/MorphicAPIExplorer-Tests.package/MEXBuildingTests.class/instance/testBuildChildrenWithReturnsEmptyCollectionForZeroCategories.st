tests
testBuildChildrenWithReturnsEmptyCollectionForZeroCategories

	| specCollection |
	overView categories: empty.
	specCollection := overView buildChildrenWith: toolbuilder.
	self assert: specCollection size equals: 0
	