accessing
findDependeesOf: aListItemMorph In: anOrderedCollection

	| methodsAsStrings dependents |

	methodsAsStrings := aListItemMorph 
		ifNotNil: [:theMorph | theMorph complexContents getDependencies] 
		ifNil: [OrderedCollection new].
	dependents := anOrderedCollection select: [:aMorph | methodsAsStrings includes: aMorph complexContents asString].
	self dependentMethods: (dependents collect: [:aDependent | aDependent complexContents item]).
	^ dependents