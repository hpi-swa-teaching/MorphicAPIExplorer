running
collectMEXListItemWrappersFromMethods

	methodListItemWrappers := methods collect: [:aMEXMethod |
		MEXListItemWrapper newWithCategory: aMEXMethod havingModel: self havingParent: self]