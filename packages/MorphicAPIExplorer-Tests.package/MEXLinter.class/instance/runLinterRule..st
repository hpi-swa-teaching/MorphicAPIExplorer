testing-utils
runLinterRule: aLinterRule

	| testRunner testObjects |
	testRunner := SLTestRunner new environment: SLDefaultEnvironment new.
	testObjects := self classes collect: [ :each | each as: SLTestObject ].

	testRunner runOnTests: {aLinterRule} andTestObjects: testObjects.

	^ (testObjects
		collect: [:testObject | testObject resultOf: aLinterRule])
		collect: [:result | result value]