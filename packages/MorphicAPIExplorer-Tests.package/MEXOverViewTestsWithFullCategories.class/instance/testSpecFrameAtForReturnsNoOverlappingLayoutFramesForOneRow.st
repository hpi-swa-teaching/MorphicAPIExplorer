tests
testSpecFrameAtForReturnsNoOverlappingLayoutFramesForOneRow

	| specFrames |
	specFrames := OrderedCollection new.
	1 to: defaultCollectionSize do: [:anIndex | specFrames add: (overView specFrameAt: anIndex for: 1)].
	2 to: specFrames size do: [:anIndex |
		self assert: (specFrames at: anIndex - 1) rightFraction <= (specFrames at: anIndex) leftFraction]