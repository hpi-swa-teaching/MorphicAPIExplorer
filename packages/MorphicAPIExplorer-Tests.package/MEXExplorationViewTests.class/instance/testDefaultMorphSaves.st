tests
testDefaultMorphSaves

	| currentMorph view previousSize |
	view := builder build: explorationView.
	currentMorph := EllipseMorph new.
	previousSize := explorationView defaultMorphs size.
	explorationView currentMorph: currentMorph.
	explorationView saveCurrentMorph.
	self assert: previousSize + 1 equals: explorationView defaultMorphs size.
	self assert: (self countType: currentMorph class in: explorationView defaultMorphs keys) > 0