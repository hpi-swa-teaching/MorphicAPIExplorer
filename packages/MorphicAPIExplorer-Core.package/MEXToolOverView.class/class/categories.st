constants
categories

	^ {
		MEXCategory 
			newNamed: 'Transformations' 
			havingImage: ImageMorph new 
			withMethodList: {
				MEXMethod 
					withName: 'Colors Setting' 
					havingSubMethods: {
						MEXMethod withName: 'a'. 
						MEXMethod withName: 'b'. 
						MEXMethod withName: 'c'
					}.
				MEXMethod 
					withName: 'Text Setting' 
					havingSubMethods: {
						MEXMethod withName: 'd'. 
						MEXMethod withName: 'e'. 
						MEXMethod withName: 'f'
					}
			}.
		MEXCategory 
			newNamed: 'Animations' 
			havingImage: ImageMorph new 
			withMethodList: OrderedCollection new.
		MEXCategory 
			newNamed: 'Nesting' 
			havingImage: ImageMorph new 
			withMethodList: OrderedCollection new.
		MEXCategory 
			newNamed: 'Images' 
			havingImage: ImageMorph new 
			withMethodList: OrderedCollection new.
		MEXCategory 
			newNamed: 'Coloring' 
			havingImage: ImageMorph new 
			withMethodList: OrderedCollection new.
		MEXCategory 
			newNamed: 'Layout' 
			havingImage: ImageMorph new 
			withMethodList: OrderedCollection new.
	} asOrderedCollection