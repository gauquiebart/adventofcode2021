tests
testParseInput

	self
		assert: ((AOCDay19 parseRawInput: '--- scanner 0 ---
4,0,0
5,0,0

--- scanner 1 ---
2,0,0
3,0,0') collect: [ :each | each beacons asArray  ])
		equals: { 
				{ 
					{ 4. 0. 0 }.
					{ 5. 0. 0 } }.
				{ 
					{ 2. 0. 0 }.
					{ 3. 0. 0 } } }