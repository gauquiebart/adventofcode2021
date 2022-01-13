arithmetic
fullyRotatedAroundXY

	^ { 
		  self.
		  self leftRotatedAroundXY.
		  self leftRotatedAroundXY leftRotatedAroundXY.
		  self leftRotatedAroundXY leftRotatedAroundXY leftRotatedAroundXY }