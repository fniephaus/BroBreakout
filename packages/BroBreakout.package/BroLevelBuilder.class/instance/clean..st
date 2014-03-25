building
clean: aString
	"Only allow characters of dslItems and dot character"
	| cleanedLanguageStream |
	cleanedLanguageStream := WriteStream on: aString.
	aString do: [:aCharacter |
		((self healthValues keys includes: aCharacter) or: (aCharacter = $.)) ifTrue: [
			cleanedLanguageStream nextPut: aCharacter]].
	^ cleanedLanguageStream contents