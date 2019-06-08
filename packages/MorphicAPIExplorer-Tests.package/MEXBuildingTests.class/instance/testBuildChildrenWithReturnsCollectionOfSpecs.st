tests
testBuildChildrenWithReturnsCollectionOfSpecs

	| specCollection |
	overView categories: full.
	specCollection := overView buildChildrenWith: builder.
	specCollection do: [:spec | self assert: (spec isKindOf: PluggableButtonSpec)]