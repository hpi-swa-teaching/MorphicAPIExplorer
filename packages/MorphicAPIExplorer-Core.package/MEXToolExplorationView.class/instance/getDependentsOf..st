ui
getDependentsOf: aListItemMorph

	^ aListItemMorph ifNotNil: [:morph | morph complexContents getDependents]