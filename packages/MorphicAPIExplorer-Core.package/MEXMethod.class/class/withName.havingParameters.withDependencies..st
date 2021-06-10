initialize-release
withName: aString havingParameters: aCollection withDependencies: anotherCollection

	^ (self withName: aString havingParameters: aCollection)
		dependencies: anotherCollection asOrderedCollection;
		yourself