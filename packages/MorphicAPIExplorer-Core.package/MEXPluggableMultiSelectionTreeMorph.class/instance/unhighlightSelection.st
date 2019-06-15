drawing
unhighlightSelection

	self selectedMorphs ifNotNil: [
		self selectedMorphs do: [:selectedMorph | selectedMorph unhighlight]
	]