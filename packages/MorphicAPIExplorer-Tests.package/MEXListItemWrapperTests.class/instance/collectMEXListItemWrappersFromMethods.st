running
collectMEXListItemWrappersFromMethods

	methodListItemWrappers := methods collect: [:aMEXMethod |
		MEXListItemWrapper withCategory: aMEXMethod havingModel: self havingParent: self]