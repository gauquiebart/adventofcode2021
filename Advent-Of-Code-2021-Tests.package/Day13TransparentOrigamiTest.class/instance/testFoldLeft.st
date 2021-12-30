tests
testFoldLeft

	self
		assert: (Day13TransparentOrigami
				 fold: { 
						 (0 @ 0).
						 (2 @ 0) } asSet
				 leftAtX: 1)
		equals: { (0 @ 0) } asSet.

	self
		assert: (Day13TransparentOrigami
				 fold: { 
						 (0 @ 0).
						 (4 @ 0) } asSet
				 leftAtX: 2)
		equals: { (0 @ 0) } asSet.

	self
		assert: (Day13TransparentOrigami
				 fold: { 
						 (0 @ 0).
						 (3 @ 0).
						 (4 @ 0) } asSet
				 leftAtX: 2)
		equals: { 
				(0 @ 0).
				(1 @ 0) } asSet.

	self
		assert: (Day13TransparentOrigami
				 fold: { 
						 (0 @ 0).
						 (3 @ 1).
						 (4 @ 0) } asSet
				 leftAtX: 2)
		equals: { 
				(0 @ 0).
				(1 @ 1) } asSet