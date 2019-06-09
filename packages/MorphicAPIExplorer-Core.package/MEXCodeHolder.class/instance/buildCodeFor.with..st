commands
buildCodeFor: aMorph with: aMethodList

	| code expandedMethod |
	code := (aMorph class name , #' new', Character cr).
	aMethodList do: [:method|
		expandedMethod := self methodsUnwrappedDict at: method.
		(method ~= aMethodList last) 
			ifTrue: [code := (code, Character tab, expandedMethod, ';', Character cr)] 
			ifFalse: [code := (code, Character tab, expandedMethod, Character cr)].
	].
	aMethodList size > 1 ifTrue: [code := (code, 'yourself')]. 
	self contents: code.
	self changed: #contents