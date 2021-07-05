tests
testMorphSpacing

	| defaultMorph view morphCount |
	morphCount := 0.
	view := builder build: explorationView.
	defaultMorph := EllipseMorph new.
	explorationView defaultMorph: defaultMorph.
	explorationView saveCurrentMorph.
	explorationView morphBox submorphs  do:
		[:aMorph | morphCount := morphCount + (explorationView morphBox submorphs count: 
			[:anotherMorph | ((aMorph boundingBoxOfSubmorphs topRight y) = (anotherMorph boundingBoxOfSubmorphs bottomRight y + explorationView class defaultMorphGapSize)) or:
				((aMorph boundingBoxOfSubmorphs bottomRight y) = (anotherMorph boundingBoxOfSubmorphs topRight y - explorationView class defaultMorphGapSize))])].
	self assert: morphCount equals: explorationView defaultMorphs size * 2 - 2
