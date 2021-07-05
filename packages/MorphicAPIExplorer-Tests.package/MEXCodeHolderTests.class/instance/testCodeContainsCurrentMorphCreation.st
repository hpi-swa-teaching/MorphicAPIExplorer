tests
testCodeContainsCurrentMorphCreation

	| expectedMorphClass |

	expectedMorphClass := category defaultMorph class name.
	codeHolder updateCodeForCurrentSelection.
	self assert: (self getCode includesSubstring: expectedMorphClass, ' new')
