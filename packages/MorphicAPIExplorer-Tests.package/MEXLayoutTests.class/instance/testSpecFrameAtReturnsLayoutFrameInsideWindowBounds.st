tests
testSpecFrameAtReturnsLayoutFrameInsideWindowBounds

	| specFrame frameSides |
	1 to: collectionSize do: [:index | 
		1 to: maxTotalRows do: [:rows |
		specFrame := overView specFrameAt: index for: maxTotalRows.
		frameSides := {specFrame leftFraction . specFrame topFraction . specFrame rightFraction . specFrame bottomFraction}.
		frameSides do: [:frameSide | self assert: (frameSide >= 0 and: frameSide <= 1)]]]