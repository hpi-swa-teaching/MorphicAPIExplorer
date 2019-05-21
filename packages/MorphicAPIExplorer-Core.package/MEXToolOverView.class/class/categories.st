constants
categories

	^ {
		MEXCategory 
			newNamed: 'Animating'
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
			newNamed: 'Building & Tearing down' 
			havingImage: ImageMorph new 
			withMethodList: OrderedCollection new.
		MEXCategory 
			newNamed: 'Nesting & Submorphing' 
			havingImage: ImageMorph new 
			withMethodList: OrderedCollection new.
		MEXCategory 
			newNamed: 'Drawing & Styling' 
			havingImage: ImageMorph new 
			withMethodList: OrderedCollection new.
		MEXCategory 
			newNamed: 'Transforming' 
			havingImage: ImageMorph new 
			withMethodList: OrderedCollection new.
		MEXCategory 
			newNamed: 'Layouting' 
			havingImage: ImageMorph new 
			withMethodList: OrderedCollection new.
		MEXCategory 
			newNamed: 'Event Handling' 
			havingImage: ImageMorph new 
			withMethodList: OrderedCollection new.
		MEXCategory 
			newNamed: 'File Handling' 
			havingImage: ImageMorph new 
			withMethodList: OrderedCollection new.
	} asOrderedCollection