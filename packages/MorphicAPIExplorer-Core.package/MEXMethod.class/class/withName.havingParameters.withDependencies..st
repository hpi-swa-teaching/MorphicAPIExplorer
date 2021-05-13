initialize-release
withName: aString havingParameters: anOrderedCollection withDependencies: anotherOrderedCollection

	^ (self withName: aString havingParameters: anOrderedCollection)
		dependencies: anotherOrderedCollection;
		yourself