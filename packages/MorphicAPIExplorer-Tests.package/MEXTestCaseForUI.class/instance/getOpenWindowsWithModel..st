tests
getOpenWindowsWithModel: aClass

	^ ActiveWorld submorphs select: [:aMorph | (aMorph isKindOf: PluggableSystemWindow) and: [aMorph model isKindOf: aClass]]