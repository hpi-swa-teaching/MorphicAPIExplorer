initialize-release
newWithName: aString havingDifficulty: anotherString havingImage: anImageMorph havingDefaultMorph: aMorph withMethodList: anOrderedCollection

	^ self new 
		name: aString;
		difficulty: anotherString;
		image: anImageMorph;
		defaultMorph: aMorph;
		methodList: anOrderedCollection;
		yourself