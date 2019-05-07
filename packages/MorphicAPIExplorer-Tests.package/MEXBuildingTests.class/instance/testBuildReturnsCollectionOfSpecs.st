tests
testBuildReturnsCollectionOfSpecs

	| specCollection |
	1 to: collectionSize do: [:i | categories add: MEXCategory new].
	overView categories: categories.
	specCollection := overView buildChildrenWith: toolbuilder.
	specCollection do: [:spec | self assert: (spec isKindOf: PluggableButtonSpec)]