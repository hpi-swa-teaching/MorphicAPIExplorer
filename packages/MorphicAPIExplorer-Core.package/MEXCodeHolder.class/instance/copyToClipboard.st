commands
copyToClipboard
	
	self changed: #acceptChanges.
	Clipboard clipboardText: (self contents) asText