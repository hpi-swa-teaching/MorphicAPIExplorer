instance creation
newFromCategory: aMEXCategory withDefaultMorphs: aMorphMethodList

	^ self new 
		defaultMorphs: aMorphMethodList;
		buildForCategory: aMEXCategory;
		yourself