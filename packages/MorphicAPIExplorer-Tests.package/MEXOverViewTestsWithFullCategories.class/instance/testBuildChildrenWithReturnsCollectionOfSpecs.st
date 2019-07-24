tests
testBuildChildrenWithReturnsCollectionOfSpecs

	self getFullCollectionOfOverViewChildren do: [:aSpec | self assert: (aSpec isKindOf: PluggableButtonSpec)]