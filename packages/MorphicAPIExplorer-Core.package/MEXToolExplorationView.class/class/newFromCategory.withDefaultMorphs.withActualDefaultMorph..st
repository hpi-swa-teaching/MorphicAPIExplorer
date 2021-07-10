instance creation
newFromCategory: aMEXCategory withDefaultMorphs: aMorphMethodList withActualDefaultMorph: aMorph

	^ self new 
		currentMorph: aMEXCategory defaultMorph;
		savedMorphs: aMorphMethodList;
		buildForCategory: aMEXCategory;
		yourself