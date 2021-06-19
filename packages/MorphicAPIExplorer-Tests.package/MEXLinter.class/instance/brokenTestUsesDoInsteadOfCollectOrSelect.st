test-for-intention-revealing
brokenTestUsesDoInsteadOfCollectOrSelect
	"Wrongly triggers when grouping collection elements by adding them to a Dictionary. Also has problems when there are multiple dos inside each other"


	self assertAllAreZero: (self runLinterRule: #collectionProtocolRule:)