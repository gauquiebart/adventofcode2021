tests
testPMVectorRotations

	self assert: (#(5 70 900) asPMVector leftRotatedAroundAxis: 1)
	equals: #(5 -900 70) asPMVector.
	
	self assert: (#(5 70 900) asPMVector leftRotatedAroundAxis: 2)
	equals: #(900 70 -5) asPMVector.
	
	self assert: (#(5 70 900) asPMVector leftRotatedAroundAxis: 3)
	equals: #(-70 5 900) asPMVector.
		
	
	
	
	
	
	
	
	
	
	
	
	
	