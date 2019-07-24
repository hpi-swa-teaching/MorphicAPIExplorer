drawing
drawSelectionOn: aCanvas

	self selectedMorphs do: [:aMorph |
		aCanvas
			transformBy: self scroller transform
			clippingTo: self scroller innerBounds
			during: [:theCanvas | aMorph drawSelectionOn: theCanvas]]