tests
testSelectedMethodsSaves

	| view |
	view := builder build: explorationView.
	explorationView currentMorph: RectangleMorph new.
	explorationView selectedMethods add: (MEXMethod newWithName: 'extent:' havingParameters: {'100 @ 100'}).
	explorationView saveCurrentMorph.
	explorationView savedMorphs valuesDo: [:aMorph |
		self assert: (self countType: MEXMethod in: aMorph) equals:aMorph size]