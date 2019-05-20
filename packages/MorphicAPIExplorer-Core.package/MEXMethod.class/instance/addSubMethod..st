accessing
addSubMethod: aMEXMethod

	self subMethods add: aMEXMethod;
		changed: #subMethodAdded with: aMEXMethod.
	^ aMEXMethod