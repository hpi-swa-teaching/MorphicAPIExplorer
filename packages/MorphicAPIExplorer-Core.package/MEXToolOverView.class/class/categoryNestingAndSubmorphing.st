constants
categoryNestingAndSubmorphing

	^ MEXCategory 
		newWithName: 'Nesting & Submorphing' 
		havingImage: (
			MEXScalableImageMorph
				newWithImage: MEXResources overviewImageNestingAndSubmorphing
				havingExtent: self defaultButtonImageExtent)
		havingDefaultMorph: Morph new
		withMethodList: {
			MEXMethod
				newWithName: 'General setup method'
				havingSubMethods: {
					MEXMethod 
						newWithName: 'addMorph:'
						havingParameters: {'morph addMorph: (EllipseMorph new color: Color green; extent: 70 @ 70)'}} .
			MEXMethod 
				newWithName: 'Manipulation' 
				havingSubMethods: {
					MEXMethod 
						newWithName: 'submorphsDo:'
						havingParameters: {'morph submorphsDo: ([:each | each extent: 20 @ 20])'}
						withDependencies: {'addMorph:'}} .
			MEXMethod 
				newWithName: 'Cleaning up' 
				havingSubMethods: {MEXMethod newWithName: 'morph removeAllMorphs'}}			