solving
fold: dots leftAtX: x

	| dotsLeftFromX dotsRightFromX dotsLeftFromXFoldedLeft |
	dotsLeftFromX := dots reject: [ :each | each right: x ].
	dotsRightFromX := dots select: [ :each | each right: x ].

	dotsLeftFromXFoldedLeft := dotsRightFromX collect: [ :each | 
		                           | offsetX |
		                           offsetX := x @ 0.
		                           each - (each x @ 0 - offsetX * 2) ].

	^ Set new
		  addAll: dotsLeftFromX;
		  addAll: dotsLeftFromXFoldedLeft;
		  yourself