tests
testSpecFrameAtForReturnsNoOverlappingLayoutFramesLessCategoriesThanRows

	| specFrames |
	overView categories: full.
	specFrames := OrderedCollection new.
	1 to: defaultCollectionSize do: [:index | specFrames add: (overView specFrameAt: index for: defaultCollectionSize + 1)].
	1 to: specFrames size do: [ :index |
		index > 1 ifTrue: [self assert: ((specFrames at: index - 1) bottomFraction <= (specFrames at: index) topFraction)]]