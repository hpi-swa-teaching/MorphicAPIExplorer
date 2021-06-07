tests
testDefaultMorphChanges

	| defaultMorphCollection view |
	view := builder build: explorationView.
	explorationView defaultMorph: (ImageMorph new).
	defaultMorphCollection := self getMorphCollectionInDefaultMorphBoxFor: view.
	self assert: (defaultMorphCollection anySatisfy: [:each | each class = explorationView defaultMorph class])
