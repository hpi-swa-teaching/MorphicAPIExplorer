as yet unclassified
handleDropFiles: anEvent
	"Handle a drop from the OS."
	|filePath importedImageMorph morphViewer codeHolder code|
	(self model class canUnderstand: #categories) 
	ifTrue: [anEvent wasHandled: true. ^self].
	
	filePath := (FileStream requestDropStream: (anEvent contents)) fullName.
	importedImageMorph := ImageMorph new image: (Form fromFileNamed: filePath).
	morphViewer := (self submorphs at: 2) submorphs first. 
	
	morphViewer 
		currentMorph: importedImageMorph;
		updateContents:  importedImageMorph.

	codeHolder := (self submorphs first) submorphs first.
	
	code :=	('| morph |
			morph := ImageMorph new.
			morph image: (Form fromFileNamed: 
			{1}
"Any morph that is supposed to accept file drops, needs to implement the handleDropFiles-method. This method takes an Event. Calling <FileStream requestDropStream: (anEvent contents)) fullName> with this Event returns the filepath on the local machine for the dropped file. Given a filepath, a morph, containing the image the path points to,  can be created via <ImageMorph new image: (Form fromFileNamed: filepath)>"' format: {filePath}).

	codeHolder model 
		updateContentsFor: code;
		save.

	anEvent wasHandled: true.
	self dropFiles: anEvent.


"FileDirectory requestDropDirectory:"
"FileStream requestDropStream:"

"ifFalse:[Transcript show:( FileStream requestDropStream: (anEvent contents)) fullName]."
"ifFalse:[(ImageMorph new image: (Form fromFileNamed: (( FileStream requestDropStream: (anEvent contents)) fullName))) openInWorld]."


