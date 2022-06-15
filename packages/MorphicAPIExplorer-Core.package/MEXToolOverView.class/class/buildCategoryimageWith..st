building
buildCategoryimageWith: aName

	^((MEXScalableImageMorph 
			newWithImage: (MEXToolOverView categoryImages at: (aName asSymbol)) 
			havingExtent:  self defaultButtonImageExtent)
				addMorph: (TextMorph new 
								contents:  aName;
								position: self defaultButtonImageExtent;
								textColor: (Color white - (PluggableButtonMorph new userInterfaceTheme color))*2;
								yourself))