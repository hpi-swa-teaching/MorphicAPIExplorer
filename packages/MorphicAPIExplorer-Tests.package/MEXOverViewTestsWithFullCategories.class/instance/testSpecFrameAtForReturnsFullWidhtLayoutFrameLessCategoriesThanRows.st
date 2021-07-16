tests
testSpecFrameAtForReturnsFullWidhtLayoutFrameLessCategoriesThanRows

	| specFrame |
	defaultCollectionSize to: 2 * defaultCollectionSize do: [:aRowNumber |
		1 to: defaultCollectionSize do: [:anIndex |
			specFrame := overView specFrameAt: anIndex for: aRowNumber.
			self assert: (specFrame leftFraction = 0 and: [specFrame rightFraction = 1])]]