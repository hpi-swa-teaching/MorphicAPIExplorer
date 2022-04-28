default morphs
changeCurrentMorph: aMorph
	
	self currentMorph: aMorph.
	self deselectAllMethods.
	(self savedMorphs at: aMorph) do: [:aMethod | self setSelectionFor: aMethod with: true].
	self playground updateContents: aMorph