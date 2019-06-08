commands
buildCodeFor: aMorph with: aMethodList

	| code |
	code := (aMorph class name , #' new').
	self contents: code.
	self changed: #contents.