test-for-spelling
dontTestMethodProtocols
	"Has false alarms, for example for assertAllAreFalse:"

	self assertAllAreZero: (self runLinterRule: #smallLintMethodProtocolsSpelling)