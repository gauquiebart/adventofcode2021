helper
parseImageInput: aString 
	^AOCDay20InputImage new imageLines: (aString splitOn: Character cr); yourself 