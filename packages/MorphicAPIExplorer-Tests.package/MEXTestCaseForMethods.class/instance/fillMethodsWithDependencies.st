running
fillMethodsWithDependencies

	self fillMethodsIncludingSubMethods.
	methods second subMethods: {
		MEXMethod newWithName: 'c' . 
		MEXMethod newWithName: 'd' withDependencies: {'c'} . 
		MEXMethod newWithName: 'd:' havingParameters: {'param'} withDependencies: {'c'}}
	