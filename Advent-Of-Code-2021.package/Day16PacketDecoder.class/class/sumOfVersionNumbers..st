converting
sumOfVersionNumbers: decoded

	((decoded at: 1) = #literal) ifTrue: [ ^ decoded at: 2 ].
	((decoded at: 1) = #operator) ifTrue: [ ^ (decoded at: 2) + (self sumOfVersionNumbers: (decoded at: 4)) ].


	^ decoded sum: [ :each | self sumOfVersionNumbers: each ]