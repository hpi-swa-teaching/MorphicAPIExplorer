tests-trees
testGetSelectionList

	self makeMultiSelectionTree.
	queries := IdentitySet new.
	self
		changed: #getSelectionList:;
		assert: (queries includes: #getSelectionList:)