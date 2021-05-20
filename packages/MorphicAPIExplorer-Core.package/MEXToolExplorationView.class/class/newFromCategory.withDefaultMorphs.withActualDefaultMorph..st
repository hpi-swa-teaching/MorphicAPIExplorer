instance creation
newFromCategory: aMEXCategory withDefaultMorphs: aMorphMethodList withActualDefaultMorph: aMorph

	^ self new 
		actualDefaultMorph: aMorph;
		defaultMorphs: aMorphMethodList;
		buildForCategory: aMEXCategory;
		yourself