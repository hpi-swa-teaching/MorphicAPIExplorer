initialize-release
newWithName: aString havingParameters: aCollection withDependencies: anotherCollection withInhibitors: anotherAnotherCollection

	^ (self newWithName: aString havingParameters: aCollection)
					dependencies: anotherCollection asOrderedCollection;
					inhibitors: anotherAnotherCollection asOrderedCollection;
					yourself