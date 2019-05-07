tests
testSpecFrameAtReturnsLayoutFrameInsideWindowBounds

	| frame left top right bottom specFrame|
	1 to: collectionSize do: [:index | 
		1 to: maxTotalRows do: [:rows |
		frame := overView specFrameAt: index for: maxTotalRows.
		left := frame leftFraction.
		top := frame topFraction.
		right := frame rightFraction.
		bottom := frame bottomFraction.
		specFrame := {left . top . right . bottom} asOrderedCollection.
		specFrame do: [:frameSide | self assert: (frameSide >= 0 and: frameSide <= 1)]]]