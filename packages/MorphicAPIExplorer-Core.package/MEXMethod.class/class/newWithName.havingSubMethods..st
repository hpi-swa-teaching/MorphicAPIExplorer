initialize-release
newWithName: aString havingSubMethods: aCollection

	^ (self newWithName: aString)
		subMethods: aCollection asOrderedCollection;
		yourself