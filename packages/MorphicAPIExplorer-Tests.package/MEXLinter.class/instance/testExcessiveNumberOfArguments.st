test-for-miscellaneous
testExcessiveNumberOfArguments
	"This triggers for the buildButtonWith:label:action:help:enabled: method, which does have many names, but only because buttons have so many properties."

	self assertAllAreZero: (self runLinterRule: #smallLintExcessiveArguments)