test-for-intention-revealing
testSendsAddRemoveToExternalCollection

	self assertAllAreZero: (self runLinterRule: #smallLintCollectionMessagesToExternalObject)