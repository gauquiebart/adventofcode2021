*Advent-Of-Code-2021
matchingOpeningBracket

	$} = self ifTrue: [ ^ ${ ].
	$] = self ifTrue: [ ^ $[ ].
	$) = self ifTrue: [ ^ $( ].
	$> = self ifTrue: [ ^ $< ]