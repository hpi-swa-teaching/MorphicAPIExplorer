tests
testSpecFrameAtForReturnsFullHeightLayoutFrameForOneRow

	| specFrame |
	1 to: defaultCollectionSize do: [:anIndex |
		specFrame := overView specFrameAt: anIndex for: 1.
		self assert: specFrame topFraction equals: 0.05.
		self assert: specFrame bottomFraction equals: 1.]