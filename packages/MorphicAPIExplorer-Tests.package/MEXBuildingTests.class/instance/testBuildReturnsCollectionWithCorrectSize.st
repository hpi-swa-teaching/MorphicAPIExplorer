tests
testBuildReturnsCollectionWithCorrectSize

	| specCollection |
	1 to: collectionSize do: [:i | categories add: MEXCategory new].
	overView categories: categories.
	specCollection := overView buildChildrenWith: toolbuilder.
	self assert: specCollection size equals: collectionSize