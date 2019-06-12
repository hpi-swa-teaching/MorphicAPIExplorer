tests-trees
testSetSelectionList

	self makeMultiSelectionTree.
	queries := IdentitySet new.
	self
		changed: #setSelectionList:;
		assert: (queries includes: #setSelectionList:)