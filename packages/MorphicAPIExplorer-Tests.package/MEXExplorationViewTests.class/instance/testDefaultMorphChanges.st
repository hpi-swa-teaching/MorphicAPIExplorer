tests
testDefaultMorphChanges

	| defaultMorph view |
	view := builder build: explorationView.
	explorationView defaultMorph: (ImageMorph new).
	defaultMorph := (self getMorphCollectionInDefaultMorphBoxFor: view) first submorphs first submorphs first submorphs first.
	self assert: defaultMorph class equals: explorationView defaultMorph class