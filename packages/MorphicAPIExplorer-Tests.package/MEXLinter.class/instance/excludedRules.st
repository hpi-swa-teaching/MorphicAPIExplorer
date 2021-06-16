constants
excludedRules

	^ {#smallLintArgumentVariableNamesSpelling . 
		#smallLintClassCommentsSpelling .
		#dataClass: .
		#smallLintInconsistentMethodClassification .
		#lawOfDemeterRule: .
		#longMethods: .
		#longMethod: .
		#smallLintMethodCommentsSpelling } asOrderedCollection