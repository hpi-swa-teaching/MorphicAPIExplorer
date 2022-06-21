as yet unclassified
handleDropFiles: anEvent
	"Handle a drop from the OS."
	|filepath importedImageMorph morphviewer |
	(self model class canUnderstand: #categories) 
	ifTrue: [anEvent wasHandled: true. ^self].
	
	filepath:= (FileStream requestDropStream: (anEvent contents)) fullName.
	importedImageMorph:= ImageMorph new image: (Form fromFileNamed: filepath).
	morphviewer:= (self submorphs at: 2) submorphs at:1.
	
	morphviewer 
		currentMorph: importedImageMorph;
		updateContents:  importedImageMorph;
		yourself.

	anEvent wasHandled: true.
	self dropFiles: anEvent.


"FileDirectory requestDropDirectory:"
"FileStream requestDropStream:"

"ifFalse:[Transcript show:( FileStream requestDropStream: (anEvent contents)) fullName]."
"ifFalse:[(ImageMorph new image: (Form fromFileNamed: (( FileStream requestDropStream: (anEvent contents)) fullName))) openInWorld]."


