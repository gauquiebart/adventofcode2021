tests
testAllNumbersWithSamePatternSize

	self assert: 0 allNumbersWithSamePatternSize equals: #( 0 6 9 ).
	self assert: 1 allNumbersWithSamePatternSize equals: #( 1 ).
	self assert: 2 allNumbersWithSamePatternSize equals: #( 2 3 5 ).
	self assert: 3 allNumbersWithSamePatternSize equals: #( 2 3 5 ).
	self assert: 4 allNumbersWithSamePatternSize equals: #( 4 ).
	self assert: 5 allNumbersWithSamePatternSize equals: #( 2 3 5 ).
	self assert: 6 allNumbersWithSamePatternSize equals: #( 0 6 9 ).
	self assert: 7 allNumbersWithSamePatternSize equals: #( 7 ).
	self assert: 8 allNumbersWithSamePatternSize equals: #( 8 ).
	self assert: 9 allNumbersWithSamePatternSize equals: #( 0 6 9 ).

	self
		assert: (SmallInteger allNumbersWithPatternSize: 0)
		equals: #().
	self assert: (SmallInteger allNumbersWithPatternSize: 1) equals: #().
	self assert: (SmallInteger allNumbersWithPatternSize: 2) equals: #( 1 ).
	self assert: (SmallInteger allNumbersWithPatternSize: 3) equals: #( 7 ).
	self assert: (SmallInteger allNumbersWithPatternSize: 4) equals: #( 4 ).
	self assert: (SmallInteger allNumbersWithPatternSize: 5) equals: #( 2 3 5 ).
	self assert: (SmallInteger allNumbersWithPatternSize: 6) equals: #( 0 6 9 ).
	self assert: (SmallInteger allNumbersWithPatternSize: 7) equals: #( 8 ).
	self assert: (SmallInteger allNumbersWithPatternSize: 8) equals: #( ).
	self assert: (SmallInteger allNumbersWithPatternSize: 9) equals: #( )