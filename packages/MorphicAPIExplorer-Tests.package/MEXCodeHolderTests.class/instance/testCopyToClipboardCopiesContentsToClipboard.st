tests
testCopyToClipboardCopiesContentsToClipboard

	| expectedString |
	expectedString := 'Hello, World!'.
	mexCodeHolder contents: expectedString.
	mexCodeHolder copyToClipboard.
	self assert: Clipboard clipboardText equals: expectedString