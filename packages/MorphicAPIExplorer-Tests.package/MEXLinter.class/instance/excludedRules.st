constants
excludedRules

	^ {#smallLintArgumentVariableNamesSpelling . 
		#dataClass: .
		#smallLintInconsistentMethodClassification .
		#lawOfDemeterRule: .
		#longMethods: .
		#longMethod: .
		#smallLintAddRemoveDependents .
		#smallLintSendsDifferentSuper .
		#smallLintBadMessage .
		#smallLintUtilityMethods} asOrderedCollection