tests
testSelectedMethodsSaves

	| view |
	view := builder build: explorationView.
	explorationView defaultMorph: RectangleMorph new.
	explorationView selectedMethods add: (MEXMethod withName: 'extent:').
	explorationView saveCurrentMorph.
	explorationView defaultMorphs valuesDo: [ :each |
		self assert: (self countType: MEXMethod in: each) equals: each size]