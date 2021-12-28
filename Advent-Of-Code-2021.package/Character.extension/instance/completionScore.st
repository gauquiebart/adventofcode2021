*Advent-Of-Code-2021
completionScore

	$) = self ifTrue: [ ^ 1 ].
	$] = self ifTrue: [ ^ 2 ].
	$} = self ifTrue: [ ^ 3 ].
	$> = self ifTrue: [ ^ 4 ]