tests
testPuzzleA

	self
		assert: (Day13TransparentOrigami
				 fold: (self parseAsPoints: self rawInputPaper)
				 leftAtX: 655) size
		equals: 684