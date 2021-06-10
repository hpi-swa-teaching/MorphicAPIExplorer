initialize-release
withName: aString withDependencies: aCollection

	^ (self withName: aString)
		dependencies: aCollection asOrderedCollection;
		yourself