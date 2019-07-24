tests
testSpecFrameAtForReturnsLayoutFrameInsideWindowBounds

	| specFrame frameSides |
	overView categories: full.
	1 to: defaultCollectionSize do: [:index | 
		1 to: maxTotalRows do: [:rows |
			specFrame := overView specFrameAt: index for: maxTotalRows.
			frameSides := {specFrame leftFraction . specFrame topFraction . specFrame rightFraction . specFrame bottomFraction}.
			self assert: (frameSides reject: [:frameSide | frameSide >= 0 and: [frameSide <= 1]]) isEmpty]]