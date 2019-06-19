selection
setSelectedParentMorphs: anOrderedCollection

	self setSelectedParentsSelector ifNotNil: [:aSymbol |
		self selectedWrappersItemParents do: [:aParentNode |
			model
				perform: aSymbol
				with: aParentNode
		]
	]