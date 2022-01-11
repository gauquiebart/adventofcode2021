arithmetic
fullyRotatedAroundXZ
	^ { 
		  self.
		  self leftRotatedAroundXZ.
		  self leftRotatedAroundXZ leftRotatedAroundXZ.
		  self leftRotatedAroundXZ leftRotatedAroundXZ leftRotatedAroundXZ }