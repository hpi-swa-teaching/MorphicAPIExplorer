instance creation
newFromCategory: aMEXCategory withDefaultMorphs: aMorphMethodList withActualDefaultMorph: aMorph

	^ self new 
		currentMorph: aMEXCategory defaultMorph;
		defaultMorphs: aMorphMethodList;
		buildForCategory: aMEXCategory;
		yourself