logging
logGeneralInfoOf: aTestRunner inTest: aLinterRule		

	| testData |
	
	testData := aTestRunner testDataFor: aLinterRule.
	Transcript show: ('Now linting rule (',  testData name , ') from ', testData plugIn, Character cr, 
		'Description: ', testData description, Character cr).