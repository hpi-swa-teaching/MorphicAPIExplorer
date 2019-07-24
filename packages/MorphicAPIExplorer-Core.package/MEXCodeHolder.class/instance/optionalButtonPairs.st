controls
optionalButtonPairs
	"Answer a tuple (formerly pairs) defining buttons, in the format:
			button label	selector to send	help message"
			
	| buttonList |
	buttonList := #(
		('run'				runCode			'run this code for the above world')
		('copy' 				copyToClipboard	'copy this code to your clipboard')).
	
	^ buttonList