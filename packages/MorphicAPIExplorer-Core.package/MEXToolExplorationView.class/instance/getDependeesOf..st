ui
getDependeesOf: aListItemMorph

	^ aListItemMorph ifNotNil: [:morph | morph complexContents getDependents]