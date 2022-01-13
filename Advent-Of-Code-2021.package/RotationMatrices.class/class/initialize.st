initialization
initialize

	RotationMatrices3D := Dictionary new.

	RotationMatrices3D at: 1 put: ((PMSymmetricMatrix identity: 4)
			 at: 2 at: 2 put: 0;
			 at: 3 at: 3 put: 0;
			 at: 2 at: 3 put: -1;
			 at: 3 at: 2 put: 1;
			 yourself).

	RotationMatrices3D at: 2 put: ( 
		(PMSymmetricMatrix identity: 4)
			at: 1 at: 1 put: 0;
			at: 3 at: 3 put: 0;
			at: 1 at: 3 put: -1;
			at: 3 at: 1 put: 1;
			yourself).

	RotationMatrices3D at: 3 put: (
		(PMSymmetricMatrix identity: 4)
			at: 1 at: 1 put: 0;
			at: 2 at: 2 put: 0;
			at: 1 at: 2 put: -1;
			at: 2 at: 1 put: 1;
			yourself)