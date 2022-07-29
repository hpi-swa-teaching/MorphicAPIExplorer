tests
testSearchListInvisibleOnOpen

	 builder build: overView.
	self assert: overView findSearchListInDependents visible not
