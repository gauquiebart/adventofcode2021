*Advent-Of-Code-2021
matchingClosingBracket

	${ = self ifTrue: [ ^ $} ].
	$[ = self ifTrue: [ ^ $] ].
	$( = self ifTrue: [ ^ $) ].
	$< = self ifTrue: [ ^ $> ]