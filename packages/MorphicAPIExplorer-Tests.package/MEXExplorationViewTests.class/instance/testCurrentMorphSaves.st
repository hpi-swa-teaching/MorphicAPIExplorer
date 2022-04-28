tests
testCurrentMorphSaves

	| currentMorph previousSize |
	currentMorph := EllipseMorph new.
	previousSize := explorationView savedMorphs size.
	explorationView currentMorph: currentMorph.
	explorationView saveCurrentMorph.
	self assert: previousSize + 1 equals: explorationView savedMorphs size.
	self assert: (self countType: currentMorph class in: explorationView savedMorphs keys) > 0
