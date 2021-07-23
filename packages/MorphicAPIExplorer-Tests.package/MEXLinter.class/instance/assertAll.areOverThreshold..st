testing-utils
assertAll: aCollectionOfNumbers areOverThreshold: aNumber

	self assert: (aCollectionOfNumbers allSatisfy: [:anotherNumber | anotherNumber > aNumber])