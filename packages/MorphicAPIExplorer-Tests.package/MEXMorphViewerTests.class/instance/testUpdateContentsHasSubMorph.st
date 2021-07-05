tests
testUpdateContentsHasSubMorph

	morphViewer openInWorld.
	morphViewer updateContents: Morph new.
	self assert: morphViewer submorphs size equals: 1.
	morphViewer abandon