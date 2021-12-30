solving
fold: dots upAtY: y

	| dotsAboveY dotsBelowY dotsBelowYFoldedUp |
	dotsAboveY := dots reject: [ :each | each below: y ].
	dotsBelowY := dots select: [ :each | each below: y ].

	dotsBelowYFoldedUp := dotsBelowY collect: [ :each | 
		                      | offsetY |
		                      offsetY := 0 @ y.
		                      each - (0 @ each y - offsetY * 2) ].

	^ Set new
		  addAll: dotsAboveY;
		  addAll: dotsBelowYFoldedUp;
		  yourself