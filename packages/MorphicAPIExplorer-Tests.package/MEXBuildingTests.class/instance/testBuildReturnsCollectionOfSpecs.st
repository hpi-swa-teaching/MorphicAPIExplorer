tests
testBuildReturnsCollectionOfSpecs

	| specCollection |
	1 to: collectionSize do: [:i | categories add: MEXCategory new].
	overView categories: categories.
	specCollection := overView build: toolbuilder.
	specCollection do: [:spec | self assert: (spec isKindOf: PluggableButtonSpec)]