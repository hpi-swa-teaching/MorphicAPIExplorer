commands
generateCodeFor: aMorph with: aMethodList

	| code expandedMethod |
	code := (aMorph class name , #' new', Character cr).
	aMethodList do: [:aMethod |
		expandedMethod := self methodsUnwrappedDict at: aMethod.
		(aMethod ~= aMethodList last) 
			ifTrue: [code := (code, Character tab, expandedMethod, ';', Character cr)] 
			ifFalse: [code := (code, Character tab, expandedMethod, Character cr)].
	].
	aMethodList size > 1 ifTrue: [code := (code, 'yourself')]. 
	self contents: code.
	self changed: #contents