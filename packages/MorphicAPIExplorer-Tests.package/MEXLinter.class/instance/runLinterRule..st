running
runLinterRule: aLinterRule

	| testRunner testObjects |
	testRunner := SLTestRunner new environment: SLDefaultEnvironment new.
	testObjects := self classes collect: [:each | each as: SLTestObject ].
	self class isLoggingEnabled ifTrue: [self logGeneralInfoOf: testRunner inTest: aLinterRule].
	testRunner runOnTests: {aLinterRule} andTestObjects: testObjects.
	self class isLoggingEnabled ifTrue: [self logProblemsOf: testObjects InTest: aLinterRule].

	 ^ (testObjects
		collect: [:testObject | testObject resultOf: aLinterRule])
		collect: [:result | result value]