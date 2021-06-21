tests
testAssigningCategoryToSubMethods

    overView categories do: [:each | 
        each methodList do: [:method | self assert: (method category notEmpty).
            method subMethods do: [:sub | self assert: (sub category notEmpty)]]]