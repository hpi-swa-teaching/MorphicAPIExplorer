tests
testCopyToClipboardCopiesContentsToClipboard

	| expectedString |
	expectedString := 'Hello, World!'.
	codeHolder contents: expectedString.
	codeHolder copyToClipboard.
	self assert: Clipboard clipboardText equals: expectedString