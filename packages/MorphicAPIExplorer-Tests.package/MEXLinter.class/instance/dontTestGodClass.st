test-for-disharmonies
dontTestGodClass
	"MEXExplorationView is recognized as a god class, but our refactoring attempts weren't enough to reduce complexity enough"

	self assertAllAreFalse: (self runLinterRule: #godClass:)