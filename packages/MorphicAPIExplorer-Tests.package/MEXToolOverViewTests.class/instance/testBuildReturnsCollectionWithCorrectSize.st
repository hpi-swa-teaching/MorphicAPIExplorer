tests
testBuildReturnsCollectionWithCorrectSize

	| specCollection |
	1 to: 4 do: [:i | categories add: MEXCategory new].
	overView categories: categories.
	specCollection := overView build: toolbuilder.
	self assert: specCollection size equals: categories size