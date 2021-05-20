creation
updateDependencies: aMEXCategory

	self hasSubMethods 
		ifTrue: [self subMethods do: 
			[:aMethod | aMethod updateDependencies: aMEXCategory]]
		ifFalse: [self hasDependencies 
			ifTrue: [self dependencies: (aMEXCategory findMethods: self dependencies)]]
						