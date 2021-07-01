accessing
setDependeeStateOf: anOrderedCollection

	| methods |
	
	methods := anOrderedCollection collect: [:aListItemWrapper | aListItemWrapper item].
	self methodList do: [:aRootMethod | aRootMethod subMethods do: 
		[:aSubMethod | aSubMethod isActiveDependee: (methods includes: aSubMethod)]]