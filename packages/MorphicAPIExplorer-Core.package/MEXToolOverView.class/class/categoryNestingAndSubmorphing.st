constants
categoryNestingAndSubmorphing

	^ MEXCategory 
		newNamed: 'Nesting & Submorphing' 
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
						havingParameters: {'(EllipseMorph new color: Color green; extent: 70 @ 70)'}}.
			MEXMethod 
				newWithName: 'Manipulation' 
				havingSubMethods: {
					MEXMethod 
						newWithName: 'submorphsDo:'
						havingParameters: {'([:each | each extent: 20 @ 20])'}
						withDependencies: {'addMorph:'}}.
			MEXMethod 
				newWithName: 'Cleaning up' 
				havingSubMethods: {MEXMethod newWithName: 'removeAllMorphs'}}			