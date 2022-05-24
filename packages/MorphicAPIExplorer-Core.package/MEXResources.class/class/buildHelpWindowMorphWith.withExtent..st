morphs
buildHelpWindowMorphWith: aString withExtent: aPoint

	|morph|

	morph:= TextMorph new
		backgroundColor: Color lightGreen;
		margins: 10 @ 10;
		contents: aString;
		wrapOnOff;
		autoFitOnOff;
		extent: aPoint;
		readOnly: True;
		yourself.
		
	^ morph