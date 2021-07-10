tests
testMorphBoxContainsAMorph

	| defaultMorphCollection |
	
	defaultMorphCollection := self getMorphCollectionInMorphBoxFor: explorationView.
	self assert: explorationView morphBox submorphs size >= 1.
	self assert: (defaultMorphCollection size = explorationView morphBox submorphs size).
	self assert: explorationView morphBox submorphs size = explorationView savedMorphs size