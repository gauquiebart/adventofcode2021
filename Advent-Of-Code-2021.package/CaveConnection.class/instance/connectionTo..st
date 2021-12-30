accessing
connectionTo: aSymbol

	a = aSymbol ifTrue: [ ^ b ].
		b = aSymbol ifTrue: [ ^ a ].
		^nil