*Advent-Of-Code-2021
signalPatterns

	self = 0 ifTrue: [ ^ #( $a $b $c $e $f $g ) ].
	self = 1 ifTrue: [ ^ #( $c $f ) ].
	self = 2 ifTrue: [ ^ #( $a $c $d $e $g ) ].
	self = 3 ifTrue: [ ^ #( $a $c $d $f $g ) ].
	self = 4 ifTrue: [ ^ #( $b $c $d $f ) ].
	self = 5 ifTrue: [ ^ #( $a $b $d $f $g ) ].
	self = 6 ifTrue: [ ^ #( $a $b $d $e $f $g ) ].
	self = 7 ifTrue: [ ^ #( $a $c $f ) ].
	self = 8 ifTrue: [ ^ #( $a $b $c $d $e $f $g ) ].
	self = 9 ifTrue: [ ^ #( $a $b $c $d $f $g ) ].

	self shouldBeImplemented