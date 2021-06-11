initialize-release
newWithName: aString havingSubMethods: anOrderedCollection

	^ (self newWithName: aString)
		subMethods: anOrderedCollection;
		yourself