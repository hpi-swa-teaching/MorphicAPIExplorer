initialize-release
newNamed: aName havingImage: anImageMorph withMethodList: anOrderedCollection

	^ self basicNew 
		name: aName;
		image: anImageMorph;
		methodList: anOrderedCollection;
		yourself