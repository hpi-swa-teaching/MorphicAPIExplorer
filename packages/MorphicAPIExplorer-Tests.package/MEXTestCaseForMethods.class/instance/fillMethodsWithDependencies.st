running
fillMethodsWithDependencies

	self fillMethodsIncludingSubMethods.
	methods second subMethods: {MEXMethod withName: 'c' . MEXMethod withName: 'd' withDependencies: {'c'}}
	