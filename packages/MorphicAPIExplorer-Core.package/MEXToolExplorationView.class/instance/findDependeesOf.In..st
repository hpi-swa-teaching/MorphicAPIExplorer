accessing
findDependeesOf: aListItemMorph In: anOrderedCollection
	"TODO: needs refactoring"

	| methodsAsStrings dependentMorphs |

	methodsAsStrings := aListItemMorph 
		ifNotNil: [:theMorph | theMorph complexContents getDependencies] 
		ifNil: [OrderedCollection new].
	dependentMorphs := anOrderedCollection select: [:aMorph | methodsAsStrings includes: aMorph complexContents asString].
	self dependentMethods: (dependentMorphs collect: [:aDependent | aDependent complexContents item]).
	^ dependentMorphs