test-for-possible-bugs
testAssignmentInsideUnwindBlocksShouldBeOutside

	self assertAllAreZero: (self runLinterRule: #smallLintFileBlocks)