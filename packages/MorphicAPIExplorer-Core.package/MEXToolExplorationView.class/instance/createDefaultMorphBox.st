building
createDefaultMorphBox
		
    	| gap button evaluatedCompiler|
    	gap := 10.
    	morphBox := BorderedMorph new
		layoutFrame: (LayoutFrame fractions: self class fullFractions);
        	color: Preferences defaultWorldColor;
        	borderColor: Color gray;
        	yourself.
	self defaultMorphs keysInOrder do: [:each |
		evaluatedCompiler := Compiler evaluate: ('| ', each class name asString asLowercase, ' |', Character cr,
		each class name asString asLowercase , ' := ', each class name, ' new.', Character cr), ((self defaultMorphs at: each) inject: String empty into: [:aString :aSelectedMethod |
		aString, each class name asString asLowercase, Character space, aSelectedMethod asString, '.', Character cr]).
		button := SimpleButtonMorph new
			label: '';
			target: self;
			actionSelector: #changeCurrentDefaultMorph:withSelectedMethods:;
			arguments: {each . self defaultMorphs at: each};
			extent: each extent;
			addMorph: (evaluatedCompiler position: 0 @ 0);
			position: (((self class defaultMorphPosition x) + gap) @ (self class defaultMorphPosition y)).	 
			morphBox addMorph: button.
		gap := gap + button topRight x - button topLeft x + 10].
	^ {morphBox}