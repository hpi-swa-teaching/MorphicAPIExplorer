ui
filterSearchListFor: aString

	self findSearchListInDependents 
		removeFilter;
		lastKeystrokes: aString;
		filterTree