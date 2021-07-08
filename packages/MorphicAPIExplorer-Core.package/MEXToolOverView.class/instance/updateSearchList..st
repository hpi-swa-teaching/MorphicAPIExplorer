ui
updateSearchList: aText

	aText isEmpty
		ifTrue: [self searchListVisible: false]
		ifFalse: [
			self searchListVisible: true.
			self findSearchListInDependents removeFilter.
			self findSearchListInDependents lastKeystrokes: aText asString.
			self findSearchListInDependents triggerFilterTree]