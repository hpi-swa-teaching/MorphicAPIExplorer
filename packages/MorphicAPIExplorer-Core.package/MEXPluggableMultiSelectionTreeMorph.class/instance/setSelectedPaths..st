selection
setSelectedPaths: anOrderedCollection

	setSelectedPathsSelector ifNotNil: [:setSelectedPathSelector |
		self selectedWrappers do: [:selectedWrapper |
			model
				perform: setSelectedPathSelector
				with: (self selectedWrappersPathItemsFor: selectedWrapper)
		]
	]