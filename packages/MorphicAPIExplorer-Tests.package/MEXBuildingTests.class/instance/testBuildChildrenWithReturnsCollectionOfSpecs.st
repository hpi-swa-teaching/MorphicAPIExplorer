tests
testBuildChildrenWithReturnsCollectionOfSpecs

	| specCollection |
	overView categories: full.
	specCollection := overView buildChildrenWith: toolbuilder.
	specCollection do: [:spec | self assert: (spec isKindOf: PluggableButtonSpec)]