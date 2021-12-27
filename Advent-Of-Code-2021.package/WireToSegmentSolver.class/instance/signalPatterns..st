initialization
signalPatterns: aCollectionOfSignalPatterns

	signalPatterns := aCollectionOfSignalPatterns collect: [ :each | 
		                  each asOrderedCollection sort asArray ]