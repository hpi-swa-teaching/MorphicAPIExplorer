tests
testCurrentMorphChanges

	| defaultMorphCollection |
	explorationView currentMorph: Morph new.
	defaultMorphCollection := self getMorphCollectionInMorphBoxFor: explorationView.
	self assert: (defaultMorphCollection anySatisfy: [:aMorph | aMorph class = explorationView currentMorph class])
