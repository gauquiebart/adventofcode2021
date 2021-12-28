grammar
chunk

	^ bracket1Open , chunkContent , bracket1Close
	  / (bracket2Open , chunkContent , bracket2Close)
	  / (bracket3Open , chunkContent , bracket3Close)
	  / (bracket4Open , chunkContent , bracket4Close)