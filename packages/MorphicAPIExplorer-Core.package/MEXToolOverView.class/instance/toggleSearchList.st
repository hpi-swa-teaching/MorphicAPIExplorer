as yet unclassified
toggleSearchList

	"todo: own function; deprecated"
	"| allMethods |
	allMethods := Dictionary new.
	self categories do: [:each |
		allMethods at: each name put: each methodList]."

	"todo: hide/show searchlist"
	| searchListMorph |
	searchListMorph := (self dependents select: [:each | each isKindOf: PluggableTreeMorph]) first.
	searchListMorph visible: searchListMorph visible not