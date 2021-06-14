test-for-coding-styles
testDotAfterReturnConsistency
	"We want to achieve 100% Consistency -  which means 1 if written as fractions."

	self assertAll: (self runLinterRule: #dotAfterReturn:) areEqualTo: 1