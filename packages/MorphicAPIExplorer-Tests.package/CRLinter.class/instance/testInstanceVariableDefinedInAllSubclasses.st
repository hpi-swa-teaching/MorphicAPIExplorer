test-for-miscellaneous
testInstanceVariableDefinedInAllSubclasses

	self assertAllAreFalse: (self runLinterRule: #instVarInAllSubclasses:)