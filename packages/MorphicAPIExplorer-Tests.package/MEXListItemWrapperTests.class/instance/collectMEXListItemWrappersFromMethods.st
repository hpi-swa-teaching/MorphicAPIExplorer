running
collectMEXListItemWrappersFromMethods

	methodListItemWrappers := methods collect: [:aMEXMethod |
		MEXListItemWrapper newWithMethod: aMEXMethod havingModel: self havingParent: self]