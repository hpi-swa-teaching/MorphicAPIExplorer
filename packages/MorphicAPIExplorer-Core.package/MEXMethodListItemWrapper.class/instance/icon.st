accessing
icon

	^ self item hasSubMethods
		ifTrue: [nil]
		ifFalse: [
			self item isActiveDependee 
				ifTrue: [MEXIcons puzzleIcon]
				ifFalse:[
					self item hasDependencies
					ifTrue: [MEXIcons lightbulbIcon]
					"ifFalse: [self item isSelected
						ifTrue: [MEXIcons checkmarkIcon]"
						ifFalse: [MEXIcons blankIcon]]]"]"