tests
testSpecFrameAtForReturnsFullHeightLayoutFrameForOneRow

	| specFrame |
	1 to: defaultCollectionSize do: [:anIndex |
		specFrame := overView specFrameAt: anIndex for: 1.
		self assert: (specFrame topFraction = 0 and: specFrame bottomFraction = 1)]