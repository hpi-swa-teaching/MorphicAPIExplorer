accessing
icon

	^ self item hasSubMethods
		ifTrue: [nil]
		ifFalse: [
			self item hasDependencies
			ifTrue: [MEXIcons lightbulbIcon]
			ifFalse: [self item isSelected
				ifTrue: [Transcript show: self asString. MEXIcons checkmarkIcon]
				ifFalse: [MEXIcons blankIcon]]]