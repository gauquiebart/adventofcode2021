tests
testLifeSupportRating

	"comment stating purpose of instance-side method"

	"scope: class-variables  &  instance-variables"

	| testInput |
	testInput := #( 2r00100 2r11110 2r10110 2r10111 2r10101 2r01111
	                2r00111 2r11100 2r10000 2r11001 2r00010 2r01010 ).

	self
		assert:
			(Day03BinaryDiagnostic oxygenGeneratorRating: testInput atIndex: 5)
			* (Day03BinaryDiagnostic co2ScrubberRating: testInput atIndex: 5)
		equals: 230