tests
testAcceptDroppingMorph

	| morph |
	morph := Morph new.
	morphViewer openInWorld.
	morphViewer acceptDroppingMorph: morph event: DropEvent new.
	self assert: morphViewer submorphs first class equals: morph class.
	self assert: morphViewer submorphs size equals: 1.
	self assert: morphViewer currentMorph class equals: morph class.
	morphViewer abandon.
	morph abandon