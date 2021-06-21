initialize-release
newWithName: aString havingParameters: aCollection withDependencies: anotherCollection

	^ (self newWithName: aString havingParameters: aCollection)
		dependencies: anotherCollection asOrderedCollection;
		yourself