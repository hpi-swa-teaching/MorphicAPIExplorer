tests
testSpecFrameAtForReturnsLayoutFrameInsideWindowBounds

	| specFrame frameSides |
	1 to: defaultCollectionSize do: [:anIndex | 
		1 to: maxTotalRows do: [:aRowNumber |
			specFrame := overView specFrameAt: anIndex for: maxTotalRows.
			frameSides := {specFrame leftFraction . specFrame topFraction . specFrame rightFraction . specFrame bottomFraction}.
			self assert: (frameSides reject: [:aFrameSide | aFrameSide >= 0 and: [aFrameSide <= 1]]) isEmpty]]