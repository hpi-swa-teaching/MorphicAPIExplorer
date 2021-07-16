tests
testMorphSpacing

	| morph view morphCount |
	morphCount := 0.
	view := builder build: explorationView.
	morph := EllipseMorph new.
	explorationView currentMorph: morph.
	explorationView saveCurrentMorph.
	explorationView morphBox submorphs  do:
		[:aMorph | 
		morphCount := morphCount + (explorationView morphBox submorphs count: [:anotherMorph | 
			((aMorph boundingBoxOfSubmorphs topRight y) = (anotherMorph boundingBoxOfSubmorphs bottomRight y + explorationView class defaultMorphGapSize)) or:
			((aMorph boundingBoxOfSubmorphs bottomRight y) = (anotherMorph boundingBoxOfSubmorphs topRight y - explorationView class defaultMorphGapSize))])].
	self assert: morphCount equals: explorationView savedMorphs size * 2 - 2