tests
getTotalMethodCountOfCategories: anOrderedCollection

	^ anOrderedCollection inject: 0 into: [:count :aMEXCategory | count + aMEXCategory methodList size]