tests
testSpecFrameAtForReturnsFullWightLayoutFrameLessCategoriesThanRows

	| specFrame |
	overView categories: full.
	defaultCollectionSize to: 2 * defaultCollectionSize do: [:rows |
		1 to: defaultCollectionSize do: [:index |
			specFrame := overView specFrameAt: index for: rows.
			self assert: (specFrame leftFraction = 0 and: specFrame rightFraction = 1)]]