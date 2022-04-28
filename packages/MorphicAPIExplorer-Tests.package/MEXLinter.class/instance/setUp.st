running
setUp
	"MEXResources severely slows down linting because it's just hardcoded pictures"

	self classes: (self class mexCorePackage classes select: [:aClass | aClass ~~ MEXResources])
