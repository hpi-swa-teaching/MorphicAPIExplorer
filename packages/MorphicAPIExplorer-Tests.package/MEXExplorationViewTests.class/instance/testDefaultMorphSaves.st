tests
testDefaultMorphSaves

	| defaultMorph view previousSize |
	view := builder build: explorationView.
	defaultMorph := EllipseMorph new.
	previousSize := explorationView defaultMorphs size.
	explorationView defaultMorph: defaultMorph.
	explorationView saveCurrentMorph.
	self assert: previousSize + 1 equals: explorationView defaultMorphs size.
	self assert: (self countType: defaultMorph class in: explorationView defaultMorphs keys) > 0