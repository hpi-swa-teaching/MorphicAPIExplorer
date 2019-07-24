running
collectMEXMethodListItemWrappersFromMethods

	methodListItemWrappers := methods collect: [:aMEXMethod |
		MEXMethodListItemWrapper withCategory: aMEXMethod havingModel: self havingParent: self]