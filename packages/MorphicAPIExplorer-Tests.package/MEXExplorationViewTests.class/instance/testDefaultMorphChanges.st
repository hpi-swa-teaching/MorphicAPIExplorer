tests
testDefaultMorphChanges

	| defaultMorphCollection |
	
	explorationView defaultMorph: (Morph new).
	defaultMorphCollection := self getMorphCollectionInDefaultMorphBoxFor: explorationView.
	self assert: (defaultMorphCollection anySatisfy: [:each | each class = explorationView defaultMorph class])
