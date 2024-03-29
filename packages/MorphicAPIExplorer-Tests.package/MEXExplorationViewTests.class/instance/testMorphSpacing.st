tests
testMorphSpacing

	| morph morphCount |
	morphCount := 0.
	builder build: explorationView.
	morph := EllipseMorph new.
	explorationView currentMorph: morph.
	explorationView saveCurrentMorph.
	explorationView morphBox submorphs do:
		[:aMorph | 
		morphCount := morphCount + (explorationView morphBox submorphs count: [:anotherMorph | 
			((aMorph boundingBoxOfSubmorphs topRight y) = (anotherMorph boundingBoxOfSubmorphs bottomRight y + explorationView class savedMorphsGapSize)) or:
			[(aMorph boundingBoxOfSubmorphs bottomRight y) = (anotherMorph boundingBoxOfSubmorphs topRight y - explorationView class savedMorphsGapSize)]])].
	self assert: morphCount equals: explorationView savedMorphs size * 2 - 2