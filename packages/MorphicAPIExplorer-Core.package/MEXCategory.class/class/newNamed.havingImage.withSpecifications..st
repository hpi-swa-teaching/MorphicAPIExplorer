initialize-release
newNamed: aName havingImage: anImageMorph withSpecifications: aMEXExplorationSpecification

	^ self basicNew 
		name: aName;
		image: anImageMorph;
		explorationSpecification: aMEXExplorationSpecification;
		yourself.		