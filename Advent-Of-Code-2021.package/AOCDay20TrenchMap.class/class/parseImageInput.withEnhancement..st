helper
parseImageInput: aString withEnhancement: anEnhancement

	^ AOCDay20InputImage new
		  imageLines: (aString splitOn: Character cr);
		  enhancement: anEnhancement;
		  infiniteCharacter: $.;
		  yourself