tests
testSpecsPerRowForReturnsCorrectNumberWhenPassedAFloat

	| specsPerRow |
	1 to: 100 do: [:i | categories add: MEXCategory new].
	overView categories: categories.
	specsPerRow := overView specsPerRowFor: 3.7.
	self assert: specsPerRow equals: 28