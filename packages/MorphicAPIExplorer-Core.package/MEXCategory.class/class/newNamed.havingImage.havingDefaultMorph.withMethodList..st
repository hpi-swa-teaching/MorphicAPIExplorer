initialize-release
newNamed: aName havingImage: anImageMorph havingDefaultMorph: aMorph withMethodList: anOrderedCollection

	^ self new 
		name: aName;
		image: anImageMorph;
		defaultMorph: aMorph;
		methodList: anOrderedCollection;
		"updateMethodsWithDependencies;"
		yourself