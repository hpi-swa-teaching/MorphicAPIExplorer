morphs
buildHelpWindowMorphWith: aString withExtent: aPoint

	|morph systemwindowmorph|

	morph:= TextMorph new
		backgroundColor: Color lightGreen;
		margins: 10 @ 10;
		contents: aString;
		wrapOnOff;
		autoFitOnOff;
		extent: aPoint;
		readOnly: True;
		position: 5 @ 25;
		yourself.
		
	systemwindowmorph := PluggableSystemWindow new
		label: 'Help';
		addMorph: morph.
		
		
	^ systemwindowmorph