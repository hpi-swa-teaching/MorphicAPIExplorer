tests
testMethodListFirstCategory
	
	Transcript show: category methodList first category name.
	Transcript show: category name.
	self assert: (category methodList first category = category)