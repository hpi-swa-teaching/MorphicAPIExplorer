test-for-miscellaneous
dontTestInconsistentMethodClassification
	"classifying methods as unsupported in MEXPluggableMultiSelectionTreeMorph is fine"

	self assertAllAreZero: (self runLinterRule: #smallLintInconsistentMethodClassification)