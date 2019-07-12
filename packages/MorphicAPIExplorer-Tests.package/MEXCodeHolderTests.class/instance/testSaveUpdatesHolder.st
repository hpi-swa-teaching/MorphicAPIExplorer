tests
testSaveUpdatesHolder

	codeHolder addDependent: self.
	self assert: queries isEmpty.
	codeHolder save. 
	self assert: queries notEmpty