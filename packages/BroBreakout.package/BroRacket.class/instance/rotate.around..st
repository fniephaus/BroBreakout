collision handling
rotate: aVector around: degreeAngle
	| rotatedVectorX rotatedVectorY radiantAngle |

	radiantAngle := degreeAngle / 360 * (2 * Float pi).
	rotatedVectorX := (radiantAngle cos * aVector x) + (-1 * (radiantAngle sin) * aVector y).
	rotatedVectorY := (radiantAngle sin * aVector x) + (radiantAngle cos * aVector y).

	^ (rotatedVectorX rounded) @ (rotatedVectorY floor)