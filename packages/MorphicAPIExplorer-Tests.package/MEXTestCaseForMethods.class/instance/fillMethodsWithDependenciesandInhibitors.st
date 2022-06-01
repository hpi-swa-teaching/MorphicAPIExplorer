running
fillMethodsWithDependenciesandInhibitors

	self fillMethodsIncludingSubMethods.
	methods second subMethods: {
		MEXMethod newWithName: 'c' . 
		MEXMethod newWithName: 'd' withDependencies: {'c'} . 
		MEXMethod newWithName: 'e:' havingParameters: {'param'} withDependencies: {'c'} withInhibitors: {'d'}}
	