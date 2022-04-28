test-for-possible-bugs
testModifiesCollectionWhileIteratingOverIt

	self assertAllAreZero: (self runLinterRule: #smallLintModifiesCollection)