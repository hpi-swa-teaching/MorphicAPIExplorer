accessing
dependentMethods: anOrderedCollection
	"dependentMethods should always be consistent with their 'isActiveDependee' in order to properly render icons"
	
	dependentMethods do: [:aMethod | aMethod isActiveDependee: false].
	dependentMethods := anOrderedCollection.
	dependentMethods do: [:aMethod | aMethod isActiveDependee: true]