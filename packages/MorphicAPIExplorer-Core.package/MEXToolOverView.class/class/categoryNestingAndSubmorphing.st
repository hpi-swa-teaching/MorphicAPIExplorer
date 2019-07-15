constants
categoryNestingAndSubmorphing

	^ MEXCategory 
		newNamed: 'Nesting & Submorphing' 
		havingImage: (MEXScalableImageMorph
			newWithImage: MEXResources overviewImageNestingAndSubmorphing
			havingExtent: self defaultButtonImageExtent)
		havingDefaultMorph: Morph new
		withMethodList: {
				MEXMethod
					withName: 'General setup method'
					havingSubMethods: {
						MEXMethod 
							withName: 'addMorph:'
							havingParameters: {'(EllipseMorph new color: Color green; extent: 70@70)'}
					}.
				MEXMethod 
					withName: 'Manipulation' 
					havingSubMethods: {
						MEXMethod 
							withName: 'submorphsDo:'
							havingParameters: {'([:each | each extent: 20@20])'}
					}.
				MEXMethod 
					withName: 'Cleaning up' 
					havingSubMethods: {
						MEXMethod 
							withName: 'removeAllMorphs'}

		}			