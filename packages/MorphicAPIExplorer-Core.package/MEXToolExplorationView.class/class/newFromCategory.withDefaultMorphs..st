instance creation
newFromCategory: aMEXCategory withDefaultMorphs: aMorphMethodList 

	^ self new 
		currentMorph: aMEXCategory defaultMorph;
		defaultMorphs: aMorphMethodList;
		buildForCategory: aMEXCategory;
		yourself