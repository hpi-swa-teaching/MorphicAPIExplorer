selection
setSelectedParentMorphs: anOrderedCollection

	self setSelectedParentsSelector ifNotNil: [:aSymbol |
		self selectedWrappersItemParents do: [:parentNode |
			model
				perform: aSymbol
				with: parentNode
		]
	]