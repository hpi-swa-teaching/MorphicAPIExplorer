tests
testCurrentMorphChanges

	| defaultMorphCollection |
	explorationView currentMorph: Morph new.
	defaultMorphCollection := self getMorphCollectionInMorphBoxFor: explorationView.
	self assert: (defaultMorphCollection anySatisfy: [:each | each class = explorationView currentMorph class])
