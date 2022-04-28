test-for-disharmonies
brokenTestSignificantDuplication
	"wrong SL Type"

	self assertAllAreFalse: (self runLinterRule: #significantDuplication:)