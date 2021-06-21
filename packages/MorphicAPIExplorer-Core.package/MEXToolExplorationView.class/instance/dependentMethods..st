accessing
dependentMethods: anOrderedCollection
	"dependentMethods should always be consistent with their 'isActiveDependee' in order to properly render icons"
	
	self dependentMethods do: [:aMethod | aMethod isActiveDependee: false].
	dependentMethods := anOrderedCollection.
	self dependentMethods do: [:aMethod | aMethod isActiveDependee: true]