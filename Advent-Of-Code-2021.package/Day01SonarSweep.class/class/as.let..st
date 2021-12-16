converting
as: n let: anOrderedCollection

	^ (n to: anOrderedCollection size) collect: [ :index | 
		  (index - n + 1 to: index) collect: [ :indexInPlace | 
			  anOrderedCollection at: indexInPlace ] ]