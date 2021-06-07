tests
testBuildChildrenWithReturnsCollectionOfSpecs

	| children |
	children := self getFullCollectionOfOverViewChildren.
	children removeLast.
	children do: [:aSpec | self assert: (aSpec isKindOf: PluggableButtonSpec)]