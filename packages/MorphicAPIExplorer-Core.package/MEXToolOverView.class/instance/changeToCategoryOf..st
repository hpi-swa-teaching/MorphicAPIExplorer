accessing
changeToCategoryOf: aSearchItem

    (aSearchItem type = 'category') ifTrue: [self changeToExplorationViewFor: aSearchItem].
    (aSearchItem type = 'method') ifTrue: [self changeToExplorationViewFor: aSearchItem category]