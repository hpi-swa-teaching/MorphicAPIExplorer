tests
getTotalMethodCountOfCategories: aCategoryCollection

	^ aCategoryCollection inject: 0 into: [:count :aCategory | count := count + aCategory methodList size]