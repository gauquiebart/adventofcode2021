tests
testFoldUp

	self
		assert: (Day13TransparentOrigami
				 fold: { 
						 (0 @ 0).
						 (0 @ 2) } asSet
				 upAtY: 1)
		equals: { (0 @ 0) } asSet.

	self
		assert: (Day13TransparentOrigami
				 fold: { 
						 (0 @ 0).
						 (0 @ 4) } asSet
				 upAtY: 2)
		equals: { (0 @ 0) } asSet.

	self
		assert: (Day13TransparentOrigami
				 fold: { 
						 (0 @ 0).
						 (0 @ 3).
						 (0 @ 4) } asSet
				 upAtY: 2)
		equals: { 
				(0 @ 0).
				(0 @ 1) } asSet.
				
	self
		assert: (Day13TransparentOrigami
				 fold: { 
						 (0 @ 0).
						 (1 @ 3).
						 (0 @ 4) } asSet
				 upAtY: 2)
		equals: { 
				(0 @ 0).
				(1 @ 1) } asSet.			