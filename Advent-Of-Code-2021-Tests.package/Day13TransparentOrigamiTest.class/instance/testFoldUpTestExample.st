tests
testFoldUpTestExample

	| rawPaper |
	rawPaper := #( 6 , 10 #';' 0 , 14 #';' 9 , 10 #';' 0 , 3 #';' 10 , 4
	               #';' 4 , 11 #';' 6 , 0 #';' 6 , 12 #';' 4 , 1 #';'
	               0 , 13 #';' 10 , 12 #';' 3 , 4 #';' 3 , 0 #';' 8 , 4 #';'
	               1 , 10 #';' 2 , 14 #';' 8 , 10 #';' 9 , 0 ).

	self
		assert:
		(Day13TransparentOrigami
			 fold: (self parseAsPoints: rawPaper)
			 upAtY: 7)
		equals: { 
				(0 @ 0).
				(0 @ 1).
				(0 @ 3).
				(1 @ 4).
				(2 @ 0).
				(3 @ 0).
				(3 @ 4).
				(4 @ 1).
				(4 @ 3).
				(6 @ 0).
				(6 @ 2).
				(6 @ 4).
				(8 @ 4).
				(9 @ 0).
				(9 @ 4).
				(10 @ 2).
				(10 @ 4) } asSet