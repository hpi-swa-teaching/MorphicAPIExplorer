saved morphs
addDefaultButNotStandardMorphOf: aCategory

	(self class standardMorphs noneSatisfy: 
		[:anotherMorph | anotherMorph class = aCategory defaultMorph class])
			ifTrue: [self savedMorphs add: aCategory defaultMorph -> OrderedCollection new]