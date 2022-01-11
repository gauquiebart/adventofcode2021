solving
parseHomeworkAssignmentAsNumbers: aString

	^ ((aString splitOn: Character cr) collect: [ :each | 
		   OpalCompiler new
			   source: (((each copyReplaceAll: '[' with: ' { ')
					     copyReplaceAll: ']'
					     with: ' } ') copyReplaceAll: ',' with: ' . ');
			   evaluate ]) asArray