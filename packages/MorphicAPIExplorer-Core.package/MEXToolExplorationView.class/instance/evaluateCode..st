editor and playground and morphBox
evaluateCode: aCode

	| evaluatedCode|
	"playground := self playground. "
	playground clearContents. 
	evaluatedCode := Compiler new evaluate: aCode in: thisContext to: self. 
	^ evaluatedCode