tests
testCorrectPicturesinDictionary
	
	
	self assert:  (MEXToolOverView categoryImages at: #'Animating') bits equals: (MEXResources overviewImageAnimating) bits. 
	self assert:  (MEXToolOverView categoryImages at: #'Building & Tearing down') bits equals: (MEXResources overviewImageBuildingAndTearingDown) bits. 
	self assert:  (MEXToolOverView categoryImages at: #'Nesting & Submorphing') bits equals: (MEXResources overviewImageNestingAndSubmorphing) bits. 
	self assert:  (MEXToolOverView categoryImages at: #'Drawing & Styling') bits equals: (MEXResources overviewImageDrawingAndStyling) bits. 
	self assert:  (MEXToolOverView categoryImages at: #'Layouting') bits equals: (MEXResources overviewImageLayouting) bits. 
	self assert:  (MEXToolOverView categoryImages at: #'Transforming') bits equals: (MEXResources overviewImageTransforming) bits. 
	self assert:  (MEXToolOverView categoryImages at: #'Event Handling') bits equals: (MEXResources overviewImageEventHandling) bits. 
	self assert:  (MEXToolOverView categoryImages at: #'File Handling') bits equals: (MEXResources overviewImageFileHandling) bits. 
	self assert:  (MEXToolOverView categoryImages at: #'Collision') bits equals: (MEXResources overviewImageCollision) bits 
	
	