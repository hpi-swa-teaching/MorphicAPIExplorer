test-unnecessary-code
testUnnecessaryAssignmentToATemporaryVariable

	self assertAllAreZero: (self runLinterRule: #unnecessaryAssignmentRule:)