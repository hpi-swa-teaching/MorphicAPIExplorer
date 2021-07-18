saved morphs
removeDefaultButNotStandardMorphOf: aCategory

	(self class standardMorphs noneSatisfy: [:aMorph | aMorph class = aCategory defaultMorph class])
		ifTrue: [self savedMorphs removeKey: aCategory defaultMorph].