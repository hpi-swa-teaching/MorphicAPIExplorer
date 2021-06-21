accessing
keepRatio
	"contrary to coding standards we need a lazy init because of initialization order in the super classes"

	^ keepRatio ifNil: [self keepRatio: false]