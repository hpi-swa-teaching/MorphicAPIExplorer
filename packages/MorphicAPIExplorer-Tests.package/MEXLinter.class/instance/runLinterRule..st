running
runLinterRule: aLinterRule

	| testRunner testObjects testData |
	testRunner := SLTestRunner new environment: SLDefaultEnvironment new.
	testObjects := self classes collect: [:each | each as: SLTestObject ].
	testData := testRunner testDataFor: aLinterRule.
	self class isLoggingEnabled ifTrue: [self logGeneralInfoOf: testRunner inTest: aLinterRule].
	testRunner runOnTests: {aLinterRule} andTestObjects: testObjects.
	self class isLoggingEnabled ifTrue: [self logProblemsOf: testObjects InTest: aLinterRule].

	 ^ (testObjects
		collect: [:testObject | testObject resultOf: aLinterRule])
		collect: [:result | result value]