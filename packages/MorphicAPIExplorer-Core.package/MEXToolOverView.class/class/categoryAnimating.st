constants
categoryAnimating

	^ MEXCategory 
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
		}