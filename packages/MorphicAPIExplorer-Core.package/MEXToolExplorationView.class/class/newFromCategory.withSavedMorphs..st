instance creation
newFromCategory: aMEXCategory withSavedMorphs: aDictionary

	^ self new 
		currentMorph: aMEXCategory defaultMorph;
		savedMorphs: aDictionary;
		buildForCategory: aMEXCategory;
		yourself