test-for-disharmonies
brokenTestFeatureEnvy
	"wrong SL Type"

	self assertAllAreFalse: (self runLinterRule: #featureEnvy:)