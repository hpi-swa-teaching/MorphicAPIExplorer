tests
testAssigningCategoryToSubMethods

    overView categories do: [:aCategory | 
        aCategory methodList do: [:aMethod | 
		self assert: aMethod category notEmpty.
            aMethod subMethods do: [:sub | self assert: sub category notEmpty]]]