test-for-intention-revealing
dontTestLawOfDemeter
	"Incorrectly triggers when working on strings and concatenating transformations"

	self assertAllAreZero: (self runLinterRule: #lawOfDemeterRule:)