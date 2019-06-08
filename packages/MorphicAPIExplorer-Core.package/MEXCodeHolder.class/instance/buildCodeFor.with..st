commands
buildCodeFor: aMorph with: aMethodList

	| code expandedMethod |
	"expandedMethod := self methodsUnwrappedDict at: #rotationDegree:."
	code := (aMorph class name , #' new').
	self contents: code.
	self changed: #contents