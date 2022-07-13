constants
helpButtonLayout

	^Dictionary newFrom: {#left -> self leftSpecsHorizontalDistribution x. #top-> self backButtonFractionHeight x. #right -> (0.15*(self leftSpecsHorizontalDistribution y)). #bottom -> self backButtonFractionHeight y}