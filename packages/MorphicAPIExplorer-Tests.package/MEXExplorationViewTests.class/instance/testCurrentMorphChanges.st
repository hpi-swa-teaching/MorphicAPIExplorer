tests
testCurrentMorphChanges

	| defaultMorphs view |
	view := builder build: explorationView.
	explorationView currentMorph: (ImageMorph new).
	defaultMorphs := self getMorphCollectionInDefaultMorphBoxFor: view.
	self assert: (defaultMorphs anySatisfy: [:each | each class = explorationView currentMorph class])
