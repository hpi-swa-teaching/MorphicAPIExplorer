accessing
icon

	^ self item hasSubMethods
		ifTrue: [nil]
		ifFalse: [
			self item hasDependencies
			ifTrue: [Transcript show: self asString].
			self item isSelected
			ifTrue: [MEXIcons checkmarkIcon]
			ifFalse: [MEXIcons blankIcon]]