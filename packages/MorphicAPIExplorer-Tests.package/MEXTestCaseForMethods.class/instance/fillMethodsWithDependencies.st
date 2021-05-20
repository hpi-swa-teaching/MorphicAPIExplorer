running
fillMethodsWithDependencies

	self fillMethodsIncludingSubMethods.
	methods second subMethods: {MEXMethod withName: 'c' withDependencies: {'a'}}
	