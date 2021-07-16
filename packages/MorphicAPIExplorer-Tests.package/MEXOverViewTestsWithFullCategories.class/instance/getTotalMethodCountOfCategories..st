tests
getTotalMethodCountOfCategories: aCategoryCollection

	^ aCategoryCollection inject: 0 into: [:count :aCategory | count + aCategory methodList size]