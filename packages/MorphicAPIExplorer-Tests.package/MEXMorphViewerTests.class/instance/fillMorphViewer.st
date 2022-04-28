running
fillMorphViewer

	| morph |
	morph := Morph new.
	morphViewer currentMorph: morph.
	morphViewer addMorph: morph