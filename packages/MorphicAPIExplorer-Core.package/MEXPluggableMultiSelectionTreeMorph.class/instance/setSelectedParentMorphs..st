selection
setSelectedParentMorphs: anOrderedCollection

	self selectedWrappers do: [:selectedWrapper |
		model
			perform: self setSelectedParentsSelector
			with: (selectedWrapper ifNotNil: [:node |
				node parent ifNotNil: [:parentNode |
					parentNode item
				]
			])
	]