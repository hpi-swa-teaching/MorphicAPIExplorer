tests-trees
testDropItems

	self makeMultiSelectionTree.
	queries := IdentitySet new.
	self
		changed: #dropItems;
		assert: (queries includes: #dropItems)