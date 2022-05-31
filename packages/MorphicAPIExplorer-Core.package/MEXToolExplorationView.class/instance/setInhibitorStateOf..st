accessing
setInhibitorStateOf: anOrderedCollection
	| methods |
	methods := anOrderedCollection collect: [:aListItemWrapper | aListItemWrapper item].
	self methodList do: [:aRootMethod | 
		aRootMethod hasSubMethods 
			ifTrue: [
				aRootMethod subMethods do: 
				[:aSubMethod | aSubMethod isActiveInhibitor: (methods includes: aSubMethod) and; isSelected]]
			ifFalse: [aRootMethod isActiveInhibitor: ((methods includes: aRootMethod) and; isSelected)]]