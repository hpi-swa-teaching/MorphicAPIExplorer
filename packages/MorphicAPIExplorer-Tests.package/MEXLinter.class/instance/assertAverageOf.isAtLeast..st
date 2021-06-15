testing-utils
assertAverageOf: aCollectionOfObjects isAtLeast: aNumber

	Transcript show: aCollectionOfObjects average asFloat.
	self assert: (aCollectionOfObjects average asFloat >= aNumber)