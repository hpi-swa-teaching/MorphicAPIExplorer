tests
testDefaultMorphBoxContainsAMorph

	| defaultMorphCollection view |
	view := builder build: explorationView.
	defaultMorphCollection := self getMorphCollectionInDefaulMorphBoxFor: view.
	self assert: (defaultMorphCollection size = 1)