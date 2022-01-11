arithmetic
fullyMirrored

	^ { 
		  self.
		  self mirrorX.
		  self mirrorY.
		  self mirrorZ.
		  self mirrorX mirrorY.
		  self mirrorX mirrorZ.
		  self mirrorY mirrorZ.
		  self mirrorX mirrorY mirrorZ }