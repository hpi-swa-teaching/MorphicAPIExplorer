morphs
buildHelpWindowMorphWith: aString

	|morph|

	morph:= TextMorph new
		backgroundColor: Color lightGreen;
		margins: 10 @ 10;
		contents: aString;
		wrapOnOff;
		autoFitOnOff;
		readOnly: True;
		yourself.
		
		
	^ morph