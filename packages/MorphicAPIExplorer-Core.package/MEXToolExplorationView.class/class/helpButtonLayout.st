constants
helpButtonLayout

	^Dictionary newFrom: {#left -> (0.8*(self leftSpecsHorizontalDistribution x)). #top-> self backButtonFractionHeight x. #right -> self leftSpecsHorizontalDistribution x. #bottom -> self backButtonFractionHeight y}