logging
logProblemsOf: someTestObjects InTest: aLinterRule

	| tempResult stringToPrint hits |
	
	hits := 0.
	someTestObjects	do: [:testObject | 
		tempResult := testObject resultOf: aLinterRule.
		testObject methods do: [:aMethod | 
			stringToPrint :=  (self isLoggingVerbose 
				ifTrue: [Character cr asString, testObject testObject asString, '>>', aMethod parseTree asString]
				ifFalse: [aMethod name]), Character cr.
			tempResult isSummary
				ifTrue: [tempResult selectForSummary: aMethod 
					ifTrue: [hits := hits +1. Transcript show: stringToPrint]]
				ifFalse: [testObject ifMethod: [[hits := hits +1. Transcript show: stringToPrint].
					testObject ifClass: [hits := hits +1. Transcript show: stringToPrint]]]]].

	Transcript show: ('---- Linting finished with ', hits, ' issue(s) ----', Character cr, Character cr)