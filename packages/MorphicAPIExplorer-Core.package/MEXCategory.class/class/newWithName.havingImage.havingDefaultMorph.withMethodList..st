initialize-release
newWithName: aString havingImage: anImageMorph havingDefaultMorph: aMorph withMethodList: anOrderedCollection

	^ self new 
		name: aString;
		image: anImageMorph;
		defaultMorph: aMorph;
		methodList: anOrderedCollection;
		yourself