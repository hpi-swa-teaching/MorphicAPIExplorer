tests
testSpecsPerRowReturnsCorrectNumberWhenPassedAFloat

	| specsPerRow |
	1 to: 100 do: [:i | categories add: MEXCategory new].
	overView categories: categories.
	specsPerRow := overView specsPerRow: 3.7.
	self assert: specsPerRow equals: 28