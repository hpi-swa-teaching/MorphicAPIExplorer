ui
updateSearchList: aText

	aText isEmpty
		ifTrue: [self searchListVisible: false]
		ifFalse: [
			self searchListVisible: true.
			self findSearchListInDependents 
				removeFilter;
				lastKeystrokes: aText asString;
				findSearchListInDependents filterTree]
