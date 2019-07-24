tests
testSpecFrameAtForReturnsNoOverlappingLayoutFramesForOneRow

	| specFrames |
	overView categories: full.
	specFrames := OrderedCollection new.
	1 to: defaultCollectionSize do: [:index | specFrames add: (overView specFrameAt: index for: 1)].
	2 to: specFrames size do: [:index |
		self assert: ((specFrames at: index - 1) rightFraction <= (specFrames at: index) leftFraction)]