testing-utils
assertAverageOf: aCollectionOfObjects isAtLeast: aNumber

	self assert: (aCollectionOfObjects average asFloat >= aNumber)