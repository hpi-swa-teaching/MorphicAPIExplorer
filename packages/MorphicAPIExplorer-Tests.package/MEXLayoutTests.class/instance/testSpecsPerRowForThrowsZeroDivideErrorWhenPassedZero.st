tests
testSpecsPerRowForThrowsZeroDivideErrorWhenPassedZero

	self should: [overView specsPerRowFor: 0] raise: ZeroDivide