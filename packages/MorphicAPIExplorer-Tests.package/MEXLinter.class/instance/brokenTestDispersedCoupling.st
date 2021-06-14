test-for-disharmonies
brokenTestDispersedCoupling
	"wrong SL Type"

	self assertAllAreFalse: (self runLinterRule: #dispersedCoupling:)