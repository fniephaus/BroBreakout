initialization
createStatisticItem: aSymbol
	"aSymbol can be #blocks, #score, #time, #level or #lifes"
	| statisticItem |
	statisticItem := BroLevelStatisticsItem new.
	statisticItem description: (aSymbol asString asUppercase,': ' ).

	self addMorph: statisticItem.
	^statisticItem