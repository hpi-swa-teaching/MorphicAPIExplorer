initialize-release
newWithName: aString havingParameters: anOrderedCollection

	^ (self newWithName: aString)
		parameters: anOrderedCollection;
		yourself