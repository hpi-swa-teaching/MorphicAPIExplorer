initialize-release
newWithName: aString withDependencies: aCollection

	^ (self newWithName: aString)
		dependencies: aCollection asOrderedCollection;
		yourself