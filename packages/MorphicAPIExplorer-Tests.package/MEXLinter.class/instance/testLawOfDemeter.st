test-for-intention-revealing
testLawOfDemeter
	"Incorrectly triggers when chaining multiple collection protocol methods."

	self assertAllAreZero: (self runLinterRule: #lawOfDemeterRule:)