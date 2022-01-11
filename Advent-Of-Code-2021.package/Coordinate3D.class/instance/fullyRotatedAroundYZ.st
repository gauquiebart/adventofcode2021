arithmetic
fullyRotatedAroundYZ

	^ { 
		  self.
		  self leftRotatedAroundYZ.
		  self leftRotatedAroundYZ leftRotatedAroundYZ.
		  self leftRotatedAroundYZ leftRotatedAroundYZ leftRotatedAroundYZ }