accessing
backgroundOfMethodsWithoutSubmethods
|isInhibited isDependee allSelectedDependencies|
isInhibited := (self model selectedMorphs anySatisfy: [:aMorph | aMorph  complexContents item inhibitors anySatisfy: [:aString | aString == self item name ]] ).
allSelectedDependencies := (self model selectedMorphs collect: [:aMorph | aMorph complexContents item name]).
isDependee := (self item dependencies isEmpty or: (self item dependencies anySatisfy: [:aString | allSelectedDependencies anySatisfy: [:anotherString | aString == anotherString]])).

^ self item isActiveInhibitor 
		ifTrue: [Color red]
		ifFalse: [
			self item isInhibited
			ifTrue: [Color transparent]
			ifFalse: [
				(isInhibited or: isDependee not) 
				ifTrue: [Color darkGray]
				ifFalse: [Color transparent]
				]]