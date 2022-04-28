tests
testMorphBoxContainsAMorph

	| defaultMorphCollection |
	defaultMorphCollection := self getMorphCollectionInMorphBoxFor: explorationView.
	self assert: explorationView morphBox submorphs notEmpty.
	self assert: defaultMorphCollection size equals: explorationView morphBox submorphs size.
	self assert: explorationView morphBox submorphs size equals: explorationView savedMorphs size