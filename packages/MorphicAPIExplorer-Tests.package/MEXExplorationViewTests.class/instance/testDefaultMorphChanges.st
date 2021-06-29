tests
testDefaultMorphChanges

	| defaultMorphCollection view |
	view := builder build: explorationView.
	explorationView defaultMorph: (Morph new).
	defaultMorphCollection := self getMorphCollectionInDefaultMorphBoxFor: view.
	self assert: (defaultMorphCollection anySatisfy: [:each | each class = explorationView defaultMorph class])
