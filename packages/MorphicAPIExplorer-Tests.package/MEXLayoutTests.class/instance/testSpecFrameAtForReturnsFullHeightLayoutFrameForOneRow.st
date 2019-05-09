tests
testSpecFrameAtForReturnsFullHeightLayoutFrameForOneRow

	| specFrame |
	overView categories: full.
	1 to: defaultCollectionSize do: [:index |
		specFrame := overView specFrameAt: index for: 1.
		self assert: (specFrame topFraction = 0 and: specFrame bottomFraction = 1)]