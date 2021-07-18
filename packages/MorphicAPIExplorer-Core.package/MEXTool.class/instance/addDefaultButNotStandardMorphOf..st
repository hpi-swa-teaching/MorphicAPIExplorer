saved morphs
addDefaultButNotStandardMorphOf: aCategory

	(self standardMorphs noneSatisfy: 
		[:anotherMorph | anotherMorph class = aCategory defaultMorph class])
			ifTrue: [self savedMorphs add: aCategory defaultMorph -> OrderedCollection new]