testing-utils
assertAll: aCollectionOfNumbers areBelowThreshold: aNumber

	self assert: (aCollectionOfNumbers allSatisfy: [:each | each < aNumber])