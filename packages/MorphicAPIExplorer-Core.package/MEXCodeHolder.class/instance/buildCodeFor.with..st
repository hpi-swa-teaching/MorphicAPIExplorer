commands
buildCodeFor: aMorph with: aMethodList

	| code expandedMethod|
	expandedMethod := self methodsUnwrappedDict at: aMethodList.
	code := (aMorph class name , #' new ', expandedMethod).
	self contents: code.
	self changed: #contents.