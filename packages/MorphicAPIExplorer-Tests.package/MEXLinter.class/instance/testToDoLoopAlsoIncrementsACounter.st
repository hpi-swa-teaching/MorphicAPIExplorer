test-for-intention-revealing
testToDoLoopAlsoIncrementsACounter

	self assertAllAreZero: (self runLinterRule: #smallLintToDoWithIncrement)