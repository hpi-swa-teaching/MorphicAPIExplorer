testing-utils
testAllDontTestsForConsoleOutputOnly
	"this test should always pass and is only for logging tests with false positives"

	self class excludedRules do: [:aRule | self runLinterRule: aRule]