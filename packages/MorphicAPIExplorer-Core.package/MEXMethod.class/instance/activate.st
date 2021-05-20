accessing
activate

	self hasDependencies ifTrue: 
		[self dependencies do: [:aMethod | aMethod isActiveDependee: true]]