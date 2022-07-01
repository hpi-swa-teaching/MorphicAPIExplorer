editor and playground and morphBox
evaluateCode: aCode

	| morph playground|
	playground := self playground. 
	playground clearContents. 
	morph := Compiler new evaluate: aCode in: thisContext to: self. 
	^ morph