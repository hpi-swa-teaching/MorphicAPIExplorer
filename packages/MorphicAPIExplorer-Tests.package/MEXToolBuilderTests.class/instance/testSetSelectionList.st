tests-trees
testSetSelectionList

	self makeMultiSelectionTree.
	queries := IdentitySet new.
	self
		changed: #setSelectionList:with:;
		assert: (queries includes: #setSelectionList:with:)