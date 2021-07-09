accessing
getDependencies

	(self item type == 'method')
	ifTrue: [
		^ self item dependencies asOrderedCollection]
	ifFalse: [
		^ OrderedCollection new
	]