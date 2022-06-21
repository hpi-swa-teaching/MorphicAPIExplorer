as yet unclassified
handleDropFiles: anEvent
	"Handle a drop from the OS."
	
	(self model class canUnderstand: #categories) 
	ifTrue: [anEvent wasHandled: true. ^self]
	ifFalse:[Transcript show:( FileStream requestDropStream: (anEvent contents)) fullName].
	anEvent wasHandled: true.
	self dropFiles: anEvent.
	

"FileDirectory requestDropDirectory:"
"FileStream requestDropStream:"