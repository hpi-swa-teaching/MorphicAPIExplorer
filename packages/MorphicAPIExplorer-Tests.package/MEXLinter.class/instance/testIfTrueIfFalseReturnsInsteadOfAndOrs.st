test-for-miscellaneous
testIfTrueIfFalseReturnsInsteadOfAndOrs

	self assertAllAreZero: (self runLinterRule: #ifTrueReturnsRule:)