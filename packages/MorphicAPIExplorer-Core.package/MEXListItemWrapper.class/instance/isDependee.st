accessing
isDependee    

	|allSelectedDependencies|

	allSelectedDependencies := (self model selectedMorphs collect: [:aMorph | aMorph complexContents item name]).
	 ^(self item dependencies isEmpty or: [self item dependencies anySatisfy: [:aString | allSelectedDependencies anySatisfy: [:anotherString | aString == anotherString]]])