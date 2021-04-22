signaling
signal: aString

	self messageText: 'This method is unsupported. Please use ', aString, ' instead.'.
	
	^ super signal