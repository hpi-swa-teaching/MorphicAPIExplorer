accessing
selectedWrappersItems

	^ self selectedWrappers collect: [:selectedWrapper |
		selectedWrapper ifNotNil: [:aNode |
			aNode item
		]
	]