test-for-disharmonies
dontTestDataClass
	"MEXCategory must be a data class because we need to pass it around"
	
	self assertAllAreFalse: (self runLinterRule: #dataClass:)