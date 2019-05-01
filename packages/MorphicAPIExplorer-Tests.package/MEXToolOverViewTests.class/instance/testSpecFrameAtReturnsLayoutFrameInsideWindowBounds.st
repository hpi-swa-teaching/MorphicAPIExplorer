tests
testSpecFrameAtReturnsLayoutFrameInsideWindowBounds

	| specCollection left top right bottom specFrame|
	specCollection := overView build: toolbuilder.
	specCollection do: [:spec | 
		left := spec frame leftFraction.
		top := spec frame topFraction.
		right := spec frame rightFraction.
		bottom := spec frame bottomFraction.
		specFrame := {left . top . right . bottom} asOrderedCollection.
		specFrame do: [:frameSide | self assert: (frameSide >= 0 and: frameSide <= 1)]].