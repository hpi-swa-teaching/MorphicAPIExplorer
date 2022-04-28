saved morphs
addDefaultButNotStandardMorphOf: aMEXCategory

	(self class standardMorphs noneSatisfy: 
		[:anotherMorph | anotherMorph class = aMEXCategory defaultMorph class])
			ifTrue: [self savedMorphs add: aMEXCategory defaultMorph -> OrderedCollection new]