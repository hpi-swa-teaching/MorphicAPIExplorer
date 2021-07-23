testing-utils
assertAll: aCollectionOfObjects areEqualTo: anObject

	self assert: (aCollectionOfObjects allSatisfy: [:anotherObject | anotherObject = anObject])