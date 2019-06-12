tests-trees
testSetSelectedPaths

	self makeMultiSelectionTree.
	queries := IdentitySet new.
	self
		changed: #setSelectedPaths:;
		assert: (queries includes: #setSelectedPaths:)