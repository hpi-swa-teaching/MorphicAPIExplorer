saved morphs
removeDefaultButNotStandardMorphOf: aMEXCategory

	(self class standardMorphs noneSatisfy: [:aMorph | aMorph class = aMEXCategory defaultMorph class])
		ifTrue: [self savedMorphs removeKey: aMEXCategory defaultMorph]