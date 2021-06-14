test-for-miscellaneous
dontTestUtilityMethods
	"Don't test because it triggers for the setUpMenuMorph method, which follows the typical usage pattern."

	self assertAllAreZero: (self runLinterRule: #smallLintUtilityMethods)