accessing
selectedWrappersItemParents

	^ self selectedWrappers collect: [:selectedWrapper |
		selectedWrapper ifNotNil: [:aNode |
			aNode parent ifNotNil: [:parentNode | parentNode item]
		]
	]