drawing
drawHoverOn: aCanvas

	self relatedMorphs do: [:aMorph | 
		aCanvas
			transformBy: self scroller transform
			clippingTo: self scroller innerBounds
			during: [:theCanvas | aMorph drawHoverOn: theCanvas]].
	
	super drawHoverOn: aCanvas.