constants
categories

	^ {
		MEXCategory 
			newNamed: 'Transformations' 
			havingImage: ImageMorph new 
			withSpecifications: (MEXExplorationSpecification new methods: ({'a' . 'b' . 'c' . 'd'} asOrderedCollection)).
		MEXCategory 
			newNamed: 'Animations' 
			havingImage: ImageMorph new 
			withSpecifications: MEXExplorationSpecification new.
		MEXCategory 
			newNamed: 'Nesting' 
			havingImage: ImageMorph new 
			withSpecifications: MEXExplorationSpecification new.
		MEXCategory 
			newNamed: 'Images' 
			havingImage: ImageMorph new 
			withSpecifications: MEXExplorationSpecification new.
		MEXCategory 
			newNamed: 'Coloring' 
			havingImage: ImageMorph new 
			withSpecifications: MEXExplorationSpecification new.
		MEXCategory 
			newNamed: 'Layout' 
			havingImage: ImageMorph new 
			withSpecifications: MEXExplorationSpecification new.
	} asOrderedCollection