test-for-intention-revealing
testToDoDoesntUseCollect

	self assertAllAreZero: (self runLinterRule: #toDoCollectRule:)