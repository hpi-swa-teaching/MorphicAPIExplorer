tests-trees
testGetSelectedPaths

	self makeMultiSelectionTree.
	queries := IdentitySet new.
	self
		changed: #getSelectedPaths;
		assert: (queries includes: #getSelectedPaths)