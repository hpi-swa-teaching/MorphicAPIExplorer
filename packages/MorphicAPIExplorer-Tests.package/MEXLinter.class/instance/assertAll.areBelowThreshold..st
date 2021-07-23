testing-utils
assertAll: aCollectionOfNumbers areBelowThreshold: aNumber

	self assert: (aCollectionOfNumbers allSatisfy: [:anotherNumber | anotherNumber < aNumber])