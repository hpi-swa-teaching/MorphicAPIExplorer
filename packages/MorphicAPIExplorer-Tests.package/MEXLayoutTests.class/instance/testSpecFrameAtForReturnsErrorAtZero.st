tests
testSpecFrameAtForReturnsErrorAtZero

	overView categories: MEXCategory new asOrderedCollection.
	self should: [overView specFrameAt: 0 for: 1] raise: Error