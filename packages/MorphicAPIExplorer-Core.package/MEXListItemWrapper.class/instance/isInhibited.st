accessing
isInhibited 

	^(self model selectedMorphs anySatisfy: [:aMorph | aMorph  complexContents item inhibitors anySatisfy: [:aString | aString == self item name ]] ).