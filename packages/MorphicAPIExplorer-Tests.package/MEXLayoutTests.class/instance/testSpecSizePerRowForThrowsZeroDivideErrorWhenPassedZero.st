tests
testSpecSizePerRowForThrowsZeroDivideErrorWhenPassedZero

	self should: [overView specSizePerRowFor: 0] raise: ZeroDivide