accessing
deactivate

	self hasDependencies ifTrue: 
		[self dependencies do: [:aMethod | aMethod isActiveDependee: false]]