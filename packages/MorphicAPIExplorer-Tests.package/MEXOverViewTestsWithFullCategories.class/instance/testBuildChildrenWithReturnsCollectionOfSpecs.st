tests
testBuildChildrenWithReturnsCollectionOfSpecs

	| children |
	children := self getFullCollectionOfOverViewChildren.
	self assert: (children last isKindOf: PluggableTreeSpec).
	children removeLast.
	self assert: (children last isKindOf: PluggableTextSpec).
	children removeLast.
	children do: [:aSpec | self assert: (aSpec isKindOf: PluggableButtonSpec)]