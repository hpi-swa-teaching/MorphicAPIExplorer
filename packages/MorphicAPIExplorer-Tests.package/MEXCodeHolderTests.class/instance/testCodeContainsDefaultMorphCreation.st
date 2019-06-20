tests
testCodeContainsDefaultMorphCreation

	| code expectedMorphClass |
	expectedMorphClass := category defaultMorph class name.
	mexCodeHolder updateCodeForCurrentSelection.
	code := mexCodeHolder contents.
	self assert: (code includesSubstring: expectedMorphClass, ' new')