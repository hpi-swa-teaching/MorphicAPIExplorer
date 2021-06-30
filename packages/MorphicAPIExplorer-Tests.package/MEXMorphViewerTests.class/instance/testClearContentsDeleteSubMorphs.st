tests
testClearContentsDeleteSubMorphs

	self fillMorphViewer.
	morphViewer clearContents.
	self assert: morphViewer submorphs isEmpty