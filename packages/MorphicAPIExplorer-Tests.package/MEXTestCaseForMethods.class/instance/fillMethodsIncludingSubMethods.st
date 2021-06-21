running
fillMethodsIncludingSubMethods

	self fillMethodsWithoutSubMethods.
	methods first subMethods: {MEXMethod newWithName: 'a'. MEXMethod newWithName: 'b'}
	