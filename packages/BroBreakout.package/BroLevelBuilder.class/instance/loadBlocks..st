building
loadBlocks: aLevelID
	"Load level layout from filesystem and apply Domain Specific Language"
	| fileName position |
	fileName := BroBreakout getLevelFileBy: aLevelID.
	
	FileStream readOnlyFileNamed: fileName do: [:stream |
		(self clean: stream contents) keysAndValuesDo: [:aKey :aCharacter |
			position := self calculateBlockPosition: aKey.

			(self healthValues includesKey: aCharacter)	ifTrue: [
				self levelWorld addBlockAt: position health: ((self healthValues at: aCharacter) value)]]].