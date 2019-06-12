tests-trees
testSetSelectedParents

	self makeMultiSelectionTree.
	queries := IdentitySet new.
	self
		changed: #setSelectedParents:;
		assert: (queries includes: #setSelectedParents:)