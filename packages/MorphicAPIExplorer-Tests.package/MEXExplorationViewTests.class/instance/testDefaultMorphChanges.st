tests
testDefaultMorphChanges

	| defaultMorph view |
	view := builder build: explorationView.
	explorationView defaultMorph: (ImageMorph new).
	defaultMorph := (self getMorphCollectionInDefaulMorphBoxFor: view) first.
	self assert: defaultMorph class equals: explorationView defaultMorph class