tests
testCodeContainsDefaultMorphCreation

	| code expectedMorphClass |
	expectedMorphClass := category defaultMorph class name.
	codeHolder updateCodeForCurrentSelection.
	code := codeHolder contents.
	self assert: (code includesSubstring: expectedMorphClass, ' new')