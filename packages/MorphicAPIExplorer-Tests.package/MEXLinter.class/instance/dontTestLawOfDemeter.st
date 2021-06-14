test-for-intention-revealing
dontTestLawOfDemeter
	"Incorrectly triggers when chaining multiple collection protocol methods."

	self assertAllAreZero: (self runLinterRule: #lawOfDemeterRule:)