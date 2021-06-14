test-for-disharmonies
dontTestRefusedParentBequest
	"The CRLinter provides a large set of services (literally hundreds of methods) which are unrelated to those provided by its base class."

	self assertAllAreFalse: (self runLinterRule: #refusedParentBequest:)