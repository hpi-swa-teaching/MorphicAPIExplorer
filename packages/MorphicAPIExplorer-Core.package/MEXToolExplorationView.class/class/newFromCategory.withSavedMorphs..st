instance creation
newFromCategory: aMEXCategory withSavedMorphs: aMorphMethodList

	^ self new 
		currentMorph: aMEXCategory defaultMorph;
		savedMorphs: aMorphMethodList;
		buildForCategory: aMEXCategory;
		yourself