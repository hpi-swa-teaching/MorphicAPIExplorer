tests
getOpenWindowsWithModel: aClass

	^ ActiveWorld submorphs  select: [:each|( each isKindOf: PluggableSystemWindow) and: (each model isKindOf: aClass)]