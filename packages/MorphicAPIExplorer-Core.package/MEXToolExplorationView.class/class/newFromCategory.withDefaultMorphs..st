instance creation
newFromCategory: aMEXCategory withDefaultMorphs: aMorphMethodList

	^ self new 
		buildForCategory: aMEXCategory;
		defaultMorphs: aMorphMethodList;
		yourself