tests-trees
testSetSelectionList

	self makeMultiSelectionTree.
	queries := IdentitySet new.
	self
		changed: #selectedMethods;
		assert: (queries includes: #selectedMethods)