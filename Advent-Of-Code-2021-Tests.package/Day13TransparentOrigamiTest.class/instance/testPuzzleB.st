tests
testPuzzleB

	| folded |
	folded := Day13TransparentOrigami
		          fold: (self parseAsPoints: self rawInputPaper)
		          withInstructions:
		          (self parseAsFoldInstructions: self rawFoldInstructions).

	self assert: folded size equals: 98.

	self assert: (Day13TransparentOrigami asString: folded) equals: (OrderedCollection new
add: '  ## ###  #### ###  #     ##  #  # #  #';
add: '   # #  #    # #  # #    #  # # #  #  #';
add: '   # #  #   #  ###  #    #    ##   ####';
add: '   # ###   #   #  # #    # ## # #  #  #';
add: '#  # # #  #    #  # #    #  # # #  #  #';
add: ' ##  #  # #### ###  ####  ### #  # #  #';
yourself)
