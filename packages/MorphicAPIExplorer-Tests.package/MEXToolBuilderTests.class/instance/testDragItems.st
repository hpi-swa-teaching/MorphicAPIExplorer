tests-trees
testDragItems

	self makeMultiSelectionTree.
	queries := IdentitySet new.
	self
		changed: #dragItems;
		assert: (queries includes: #dragItems)