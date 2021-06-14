testing-utils
assertAll: aCollectionOfNumbers areOverThreshold: aNumber

	self assert: (aCollectionOfNumbers allSatisfy: [:each | each > aNumber])