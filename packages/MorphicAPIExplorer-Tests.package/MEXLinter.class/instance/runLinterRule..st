testing-utils
runLinterRule: aLinterRule

	| testRunner testObjects tempResult |
	testRunner := SLTestRunner new environment: SLDefaultEnvironment new.
	testObjects := self classes collect: [ :each | each as: SLTestObject ].

	testRunner runOnTests: {aLinterRule} andTestObjects: testObjects.
	
	Transcript show: ('--- Linted rule: ', aLinterRule asString, ' ---', Character cr).
	 testObjects
		do: [:testObject | 
			tempResult := testObject resultOf: aLinterRule.
			testObject methods do: [:aMethod | 
				tempResult isSummary
				ifTrue: [tempResult selectForSummary: aMethod 
					ifTrue: [Transcript show: (testObject testObject asString , '>>' , aMethod parseTree asString, Character cr)]]
				ifFalse: [testObject 
					ifMethod: [[Transcript show: (testObject testObject asString , '>>' , aMethod parseTree asString, Character cr)].
					testObject 
					ifClass: [Transcript show: (testObject testObject asString , '>>' , aMethod parseTree asString, Character cr)]]]]].

	 ^ (testObjects
		collect: [:testObject | testObject resultOf: aLinterRule])
		collect: [:result | result value]