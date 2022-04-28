ui
updateSearchList: aText

	aText isEmpty
		ifTrue: [self searchListVisible: false]
		ifFalse: [
			self searchListVisible: true.
			self filterSearchListFor: aText asString]
