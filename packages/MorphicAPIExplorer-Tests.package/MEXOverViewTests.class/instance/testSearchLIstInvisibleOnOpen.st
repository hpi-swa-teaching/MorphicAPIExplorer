tests
testSearchLIstInvisibleOnOpen

	| view |
	view := builder build: overView.
	self assert: overView findSearchListInDependents visible not.
	

