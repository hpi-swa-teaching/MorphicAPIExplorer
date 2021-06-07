tests
testSpecFrameAtForReturnsFullSizedLayoutFrameForOneCategoryAndOneRow

	| specFrame |
	overView categories: MEXCategory new asOrderedCollection.
	specFrame := overView specFrameAt: 1 for: 1.
	self assert: specFrame leftFraction equals: 0.
	self assert: specFrame topFraction equals: 0.05.
	self assert: specFrame rightFraction equals: 1.
	self assert: specFrame bottomFraction equals: 1