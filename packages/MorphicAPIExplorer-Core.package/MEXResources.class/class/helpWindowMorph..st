morphs
helpWindowMorph: aString

	|morph|

	morph:= TextMorph new
		backgroundColor: Color lightGreen;
		margins: 10 @ 10;
		contents: aString;
		wrapOnOff;
		autoFitOnOff;
		"extent: self defaultHelpWindowExtent;"
		readOnly: True;
		yourself.
		
	^ morph