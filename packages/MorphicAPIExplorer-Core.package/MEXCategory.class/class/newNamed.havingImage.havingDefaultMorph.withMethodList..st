initialize-release
newNamed: aName havingImage: anImageMorph havingDefaultMorph: aMorph withMethodList: anOrderedCollection

	^ self basicNew 
		name: aName;
		image: anImageMorph;
		defaultMorph: aMorph;
		methodList: anOrderedCollection;
		yourself