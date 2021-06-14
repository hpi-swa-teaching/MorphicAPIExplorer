testing-utils
assertAll: aCollectionOfObjects areEqualTo: anObject

	self assert: (aCollectionOfObjects allSatisfy: [:each | each = anObject])