accessing
setDependeeStateOf: anOrderedCollection

	| methods |
	methods := anOrderedCollection collect: [:aListItemWrapper | aListItemWrapper item].
	self methodList do: [:aRootMethod | 
		aRootMethod hasSubMethods 
			ifTrue: [
				aRootMethod subMethods do: 
				[:aSubMethod | aSubMethod isActiveDependee: (methods includes: aSubMethod)]]
			ifFalse: [aRootMethod isActiveDependee: (methods includes: aRootMethod)]]