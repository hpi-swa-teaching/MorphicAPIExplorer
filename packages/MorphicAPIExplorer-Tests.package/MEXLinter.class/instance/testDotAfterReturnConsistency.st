test-for-coding-styles
testDotAfterReturnConsistency
	"The hardcoded categories in MEXToolOverView are false positives. Thus, we need to reduce our consistency fraction."

	self assertAverageOf: (self runLinterRule: #dotAfterReturn:) isAtLeast: 0.98