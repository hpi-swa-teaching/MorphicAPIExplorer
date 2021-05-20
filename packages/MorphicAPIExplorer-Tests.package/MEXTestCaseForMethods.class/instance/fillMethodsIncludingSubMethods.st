running
fillMethodsIncludingSubMethods

	self fillMethodsWithoutSubMethods.
	methods first subMethods: {MEXMethod withName: 'a'. MEXMethod withName: 'b'}
	