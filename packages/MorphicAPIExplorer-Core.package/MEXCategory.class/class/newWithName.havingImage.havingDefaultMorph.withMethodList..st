initialize-release
newWithName: aName havingImage: anImageMorph havingDefaultMorph: aMorph withMethodList: anOrderedCollection

	^ self new 
		name: aName;
		image: anImageMorph;
		defaultMorph: aMorph;
		methodList: anOrderedCollection;
		yourself