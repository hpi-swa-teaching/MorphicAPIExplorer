initialize-release
withName: aString withDependencies: anOrderedCollection

	^ (self withName: aString)
		dependencies: anOrderedCollection;
		yourself