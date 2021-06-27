accessing
findDependeesOf: aListItemWrapper
	"TODO: needs refactoring"

	"| methodsAsStrings |"

	self methodList do: [:aMethod | aMethod isActiveDependee: (aListItemWrapper getDependencies includes: aMethod asString). Transcript show: aMethod asString].
	^ aListItemWrapper getDependencies.
	 "dependentMorphs := anOrderedCollection select: [:aMorph | methodsAsStrings includes: aMorph complexContents asString].
	self dependentMethods: (dependentMorphs collect: [:aDependent | aDependent complexContents item]).
	^ dependentMorphs"