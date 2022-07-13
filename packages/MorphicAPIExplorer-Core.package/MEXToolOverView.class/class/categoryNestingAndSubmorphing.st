constants
categoryNestingAndSubmorphing

	^ MEXCategory 
		newWithName: 'Nesting & Submorphing' 
		havingDifficulty: 'medium'
		havingImage: (MEXToolOverView buildCategoryimageWithName: 'Nesting & Submorphing' withDifficulty: 'medium')
		havingDefaultMorph: Morph new
		withMethodList: {
			MEXMethod
				newWithName: 'General setup method'
				havingSubMethods: {
					MEXMethod 
						newWithName: 'addGreenMorph:'
						havingParameters: {'morph addMorph: (EllipseMorph new color: Color green; extent: 70 @ 70; position: morph position)'} .
					MEXMethod 
						newWithName: 'addRedMorph:'
						havingParameters: {'morph addMorph: (EllipseMorph new color: Color red; extent: 70 @ 70; position: (morph position + (0@20)))'} .
					MEXMethod 
						newWithName: 'addYellowMorph:'
						havingParameters: {'morph addMorph: (EllipseMorph new color: Color yellow; extent: 70 @ 70; position: (morph position + (20@0)))'}} .
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